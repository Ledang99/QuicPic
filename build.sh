#!/usr/bin/env bash
# Build QuicPic (QuickPic Gallery Mod) APK from decompiled source.
# Requires: Java 17+, apktool, Android SDK build-tools 35+ (zipalign -P 16, apksigner)

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${ROOT_DIR}/source"
OUTPUT_DIR="${ROOT_DIR}/releases"
BUILD_DIR="${ROOT_DIR}/.build"
KEYSTORE="${BUILD_DIR}/debug.keystore"

ANDROID_HOME="${ANDROID_HOME:-${HOME}/android-sdk}"

# Prefer build-tools 35+ for 16 KB page-size zipalign (-P 16).
BUILD_TOOLS=""
for candidate in 35.0.0 35.0.1 36.0.0 34.0.0; do
  if [[ -x "${ANDROID_HOME}/build-tools/${candidate}/zipalign" ]]; then
    BUILD_TOOLS="${ANDROID_HOME}/build-tools/${candidate}"
    break
  fi
done
[[ -n "$BUILD_TOOLS" ]] || {
  echo "Error: Android build-tools not found under ${ANDROID_HOME}/build-tools" >&2
  exit 1
}

if [[ -x "${HOME}/tools/apktool/apktool.sh" ]]; then
  APKTOOL="${APKTOOL:-${HOME}/tools/apktool/apktool.sh}"
else
  APKTOOL="${APKTOOL:-apktool}"
fi

export PATH="${BUILD_TOOLS}:${HOME}/tools/apktool:${PATH}"

die() { echo "Error: $*" >&2; exit 1; }

require_cmd() {
  command -v "$1" >/dev/null 2>&1 || die "Missing required command: $1"
}

require_cmd java
require_cmd "$APKTOOL"
require_cmd zipalign
require_cmd apksigner
require_cmd keytool

mkdir -p "$OUTPUT_DIR" "$BUILD_DIR"

if [[ ! -d "$SOURCE_DIR" ]]; then
  die "Source directory not found: $SOURCE_DIR"
fi

echo "==> Using build-tools: ${BUILD_TOOLS}"
echo "==> Building APK from source..."
"$APKTOOL" b "$SOURCE_DIR" -o "${BUILD_DIR}/QuicPic-unsigned.apk"

if [[ ! -f "$KEYSTORE" ]]; then
  echo "==> Generating debug keystore..."
  keytool -genkeypair -v -keystore "$KEYSTORE" -alias quicpic \
    -keyalg RSA -keysize 2048 -validity 10000 \
    -storepass android -keypass android \
    -dname "CN=QuicPic, OU=Build, O=QuicPic, L=Unknown, ST=Unknown, C=US"
fi

echo "==> Aligning APK (16 KB page size for Android 15+)..."
# build-tools 35+: -P 16 page-aligns uncompressed .so files to 16 KB.
# Older -p only did 4 KB and PackageManager on 16 KB devices rejects the APK
# with "There was a problem parsing the package".
ZIPALIGN_HELP="$(zipalign 2>&1 || true)"
if [[ "${ZIPALIGN_HELP}" == *"-P <pagesize_kb>"* ]]; then
  zipalign -f -P 16 -v 4 "${BUILD_DIR}/QuicPic-unsigned.apk" "${BUILD_DIR}/QuicPic-aligned.apk" >/dev/null
  ALIGN_CHECK=(zipalign -c -P 16 -v 4)
else
  echo "Warning: build-tools lack -P 16; install build-tools 35+. Falling back to -p (4 KB)." >&2
  zipalign -f -p -v 4 "${BUILD_DIR}/QuicPic-unsigned.apk" "${BUILD_DIR}/QuicPic-aligned.apk" >/dev/null
  ALIGN_CHECK=(zipalign -c -p -v 4)
fi

echo "==> Signing APK (v1 + v2 + v3)..."
# Strip any residual META-INF from apktool so apksigner can write a clean v1 signature.
zip -d "${BUILD_DIR}/QuicPic-aligned.apk" 'META-INF/*' >/dev/null 2>&1 || true
apksigner sign \
  --ks "$KEYSTORE" \
  --ks-pass pass:android \
  --ks-key-alias quicpic \
  --key-pass pass:android \
  --v1-signing-enabled true \
  --v2-signing-enabled true \
  --v3-signing-enabled true \
  --out "${OUTPUT_DIR}/stable.apk" \
  "${BUILD_DIR}/QuicPic-aligned.apk"

echo "==> Verifying signature and page alignment..."
apksigner verify --verbose "${OUTPUT_DIR}/stable.apk"
"${ALIGN_CHECK[@]}" "${OUTPUT_DIR}/stable.apk" >/dev/null
echo "Page alignment: OK"

echo "==> Build complete: ${OUTPUT_DIR}/stable.apk"
ls -lh "${OUTPUT_DIR}/stable.apk"

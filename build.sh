#!/usr/bin/env bash
# Build QuicPic (QuickPic Gallery Mod) APK from decompiled source.
# Requires: Java 17+, apktool, Android SDK build-tools (zipalign, apksigner)

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${ROOT_DIR}/source"
OUTPUT_DIR="${ROOT_DIR}/releases"
BUILD_DIR="${ROOT_DIR}/.build"
KEYSTORE="${BUILD_DIR}/debug.keystore"

ANDROID_HOME="${ANDROID_HOME:-${HOME}/android-sdk}"
BUILD_TOOLS="${ANDROID_HOME}/build-tools/34.0.0"
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

echo "==> Building APK from source..."
"$APKTOOL" b "$SOURCE_DIR" -o "${BUILD_DIR}/QuicPic-unsigned.apk"

if [[ ! -f "$KEYSTORE" ]]; then
  echo "==> Generating debug keystore..."
  keytool -genkeypair -v -keystore "$KEYSTORE" -alias quicpic \
    -keyalg RSA -keysize 2048 -validity 10000 \
    -storepass android -keypass android \
    -dname "CN=QuicPic, OU=Build, O=QuicPic, L=Unknown, ST=Unknown, C=US"
fi

echo "==> Aligning APK..."
zipalign -f -p 4 "${BUILD_DIR}/QuicPic-unsigned.apk" "${BUILD_DIR}/QuicPic-aligned.apk"

echo "==> Signing APK..."
apksigner sign --ks "$KEYSTORE" --ks-pass pass:android --key-pass pass:android \
  --out "${OUTPUT_DIR}/stable.apk" "${BUILD_DIR}/QuicPic-aligned.apk"

echo "==> Verifying signature..."
apksigner verify --verbose "${OUTPUT_DIR}/stable.apk"

echo "==> Build complete: ${OUTPUT_DIR}/stable.apk"
ls -lh "${OUTPUT_DIR}/stable.apk"

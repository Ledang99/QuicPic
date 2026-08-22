#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ANDROID_HOME="${ANDROID_HOME:-${HOME}/android-sdk}"
NDK_VERSION="${NDK_VERSION:-29.0.14206865}"
TOOLCHAIN="${ANDROID_HOME}/ndk/${NDK_VERSION}/toolchains/llvm/prebuilt/linux-x86_64"
CC="${TOOLCHAIN}/bin/aarch64-linux-android26-clang"
SOURCE="${ROOT_DIR}/native/qpicjni156_arm64_stub.c"
OUTPUT="${ROOT_DIR}/source/lib/arm64-v8a/libqpicjni156.so"

if [[ ! -x "${CC}" ]]; then
  echo "Missing Android NDK ${NDK_VERSION}: ${CC}" >&2
  echo "Install it with: sdkmanager \"ndk;${NDK_VERSION}\"" >&2
  exit 1
fi

"${CC}" \
  -shared \
  -fPIC \
  -Oz \
  -ffunction-sections \
  -fdata-sections \
  -fvisibility=hidden \
  -mbranch-protection=standard \
  -Wl,--build-id=sha1 \
  -Wl,--gc-sections \
  -Wl,--no-undefined \
  -Wl,-soname,libqpicjni156.so \
  -Wl,-z,max-page-size=16384 \
  -Wl,-z,common-page-size=16384 \
  -Wl,-z,relro \
  -Wl,-z,now \
  "${SOURCE}" \
  -o "${OUTPUT}"

echo "Built ${OUTPUT} with Android NDK ${NDK_VERSION}"

# Source Code Guide

This repository contains the **most complete publicly available source** for QuickPic Gallery Mod v9.7. The original Java/Kotlin Gradle project was never released by the developer — only modded APKs are distributed.

## What is included

| Directory | Format | Purpose |
|-----------|--------|---------|
| `source/` | Smali + XML resources | **Rebuild APK** with apktool (`./build.sh`) |
| `source-java/` | Decompiled Java | **Read and study** app logic in Android Studio / any IDE |
| `source/lib/` | Native binaries | `libqpicjni156.so` (armeabi + x86) — binary only |
| `releases/stable.apk` | Signed APK | Pre-built output (v9.7) |

### App packages (main code)

- **QuickPic UI:** `com.alensw.*` — gallery, viewer, settings, cloud sync
- **Libraries:** `androidx.*`, `org.apache.http.*`, bundled support libs

### File counts (v9.7)

- ~2,332 smali files (`source/smali/`)
- ~2,163 Java files (`source-java/sources/`)
- ~298 resource XML/layout files (`source/res/`)

## What is NOT available

These cannot be recovered from the APK:

1. **Original Gradle/Android Studio project** — no `build.gradle`, no original class names
2. **Native C/C++ source** — `libqpicjni156.so` is a compiled binary (image processing JNI)
3. **64-bit native libs** — this build targets 32-bit (`armeabi`, `x86`) only
4. **Unobfuscated names** — some packages use minified names (`p000a`, `p012b`, etc.)

## Build from source

```bash
./scripts/setup-tools.sh   # install apktool + Android SDK tools (first time)
./build.sh                 # compiles source/ → releases/stable.apk
```

Modifications must be made in `source/` (smali/resources), not `source-java/`. Java files are for reference only — recompiling them requires a separate Gradle setup.

## Open in Android Studio

1. Clone this repo
2. Open `source-java/` as a project folder to browse Java code
3. Main app entry: search for `com.alensw` in `source-java/sources/`

## Upstream

Based on [WSTxda/QP-Gallery-Releases](https://github.com/WSTxda/QP-Gallery-Releases) **10.0.2 alpha** (64-bit ARM support).

## Device compatibility

| Architecture | Supported |
|--------------|-----------|
| **arm64-v8a** (most modern phones) | ✅ Yes |
| armeabi (32-bit ARM) | ✅ Yes |
| x86 (32-bit emulators) | ✅ Yes |
| 64-bit-only devices (no 32-bit support) | ✅ Yes (via arm64-v8a) |

**Minimum Android:** API 26 (Android 8.0). The v9.7 build (32-bit only) will **not install** on many newer phones — use the current v10 source.

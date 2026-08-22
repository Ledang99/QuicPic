# Source Code Guide

This repository contains the **most complete publicly available source** for QuickPic Gallery Mod **v10.0.7**. The original Java/Kotlin Gradle project was never released by the developer — only modded APKs are distributed.

## What is included

| Directory | Format | Purpose |
|-----------|--------|---------|
| `source/` | Smali + XML resources | **Rebuild APK** with apktool (`./build.sh`) |
| `source-java/` | Decompiled Java | **Read and study** app logic in Android Studio / any IDE (v9.7 reference) |
| `source/lib/` | Native binaries | `libqpicjni156.so` — `arm64-v8a`, `armeabi`, `x86` |
| `native/` | C source | Reproducible arm64 compatibility stub for Android 16 |
| `releases/stable.apk` | Signed APK | Pre-built output (v10.0.7) |
| `.github/workflows/android.yml` | GitHub Actions | Automated build on push to `master` |

### App packages (main code)

- **QuickPic UI:** `com.alensw.*` — gallery, viewer, settings, cloud sync
- **Libraries:** `androidx.*`, `org.apache.http.*`, bundled support libs

### File counts (v10.0.7)

- ~2,800+ smali files (`source/smali/`, `smali_classes2/`–`smali_classes4/`)
- ~2,163 Java files (`source-java/sources/`) — reference from v9.7
- ~298 resource XML/layout files (`source/res/`)

## What is NOT available

These cannot be recovered from the APK:

1. **Original Gradle/Android Studio project** — no `build.gradle`, no original class names
2. **Original native C/C++ source** — only the arm64 compatibility stub is reproducible; the functional 32-bit image-processing JNI remains prebuilt
3. **Unobfuscated names** — some packages use minified names (`p000a`, `p012b`, etc.)

## Build from source

```bash
./scripts/setup-tools.sh   # install apktool + Android SDK tools (first time)
./build.sh                 # compiles source/ → releases/stable.apk
```

To rebuild the arm64 compatibility library, install NDK 29 and run:

```bash
./scripts/build-arm64-stub.sh
```

Modifications must be made in `source/` (smali/resources), not `source-java/`. Java files are for reference only — recompiling them requires a separate Gradle setup.

### CI build

Every push to `master` triggers GitHub Actions (**Android CI**):

1. Set up JDK 17
2. Run `./scripts/setup-tools.sh`
3. Run `./build.sh`
4. Upload `releases/stable.apk` as artifact **QuicPic-stable-apk**

Download from: **Actions** → latest green run → **Artifacts**.

## Open in Android Studio

1. Clone this repo
2. Open `source-java/` as a project folder to browse Java code
3. Main app entry: search for `com.alensw` in `source-java/sources/`

## Device compatibility

| Architecture | Supported |
|--------------|-----------|
| **arm64-v8a** (most modern phones) | Yes |
| armeabi (32-bit ARM) | Yes |
| x86 (32-bit emulators) | Yes |
| 64-bit-only devices (no 32-bit support) | Yes (via arm64-v8a) |

**Minimum Android:** API 26 (Android 8.0).

Older v9.7 builds (32-bit only, `targetSdk 23`) will **not install** on many newer phones. This repo uses v10.0 with `arm64-v8a` and `targetSdk 34`.

## Known issues and fixes (this fork)

### Install: "App not compatible with your phone"

**Causes:**

1. **Missing `arm64-v8a`** — v9.7 official APK has only 32-bit libs.
2. **Low `targetSdkVersion`** — Android 15+ blocks apps targeting API 23 or lower at install time. A v9.7-based build will fail on Android 15 even with arm64 added.

**Fix:** Build from this repo’s v10.0.7 `source/` (`targetSdk 34`, `arm64-v8a`, `READ_MEDIA_*` permissions). See [CHANGELOG.md](CHANGELOG.md).

### Crash immediately after install (opens then closes)

**Causes:** v10.0.2 alpha lacked Android 13+ `READ_MEDIA_*` permissions, and its arm64 compatibility stub bundled a legacy NDK r26b static runtime that could terminate during startup on Android 16.

**Fix:** Permissions were added in v10.0.1; v10.0.7 rebuilds the arm64 stub with NDK r29 and flexible 16 KB page support. After upgrading, grant photo/video access on first launch.

### Grid thumbnails sideways after rotating an image

**Cause:** Thumbnail cache stored JPEG bytes without orientation metadata; disk preview cache was not cleared after rotate.

**Fix:** Applied in `com/alensw/b/h/h.smali` and viewer rotate handlers. After upgrading, clear app cache once if old wrong thumbnails persist.

### Modifying and adding features

| Task | Where to edit |
|------|----------------|
| Read / understand logic | `source-java/sources/com/alensw/` |
| Change UI, strings, permissions | `source/res/`, `source/AndroidManifest.xml` |
| Change app behavior | Matching `.smali` under `source/smali/` |
| Rebuild APK | `./build.sh` |

## Upstream

Based on [WSTxda/QP-Gallery-Releases](https://github.com/WSTxda/QP-Gallery-Releases) **10.0.2 alpha** with manifest fixes.

See [CHANGELOG.md](CHANGELOG.md) for fork-specific changes.

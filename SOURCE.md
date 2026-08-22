# Source Code Guide

This repository contains the **most complete publicly available source** for QuickPic Gallery Mod **v10.0**. The original Java/Kotlin Gradle project was never released by the developer — only modded APKs are distributed.

## What is included

| Directory | Format | Purpose |
|-----------|--------|---------|
| `source/` | Smali + XML resources | **Rebuild APK** with apktool (`./build.sh`) |
| `source-java/` | Decompiled Java | **Read and study** app logic in Android Studio / any IDE (v9.7 reference) |
| `source/lib/` | Native binaries | `libqpicjni156.so` — `arm64-v8a`, `armeabi`, `x86` |
| `releases/stable.apk` | Signed APK | Pre-built output (v10.0) |
| `.github/workflows/android.yml` | GitHub Actions | Automated build on push to `master` |

### App packages (main code)

- **QuickPic UI:** `com.alensw.*` — gallery, viewer, settings, cloud sync
- **Libraries:** `androidx.*`, `org.apache.http.*`, bundled support libs

### File counts (v10.0)

- ~2,800+ smali files (`source/smali/`, `smali_classes2/`–`smali_classes4/`)
- ~2,163 Java files (`source-java/sources/`) — reference from v9.7
- ~298 resource XML/layout files (`source/res/`)

## What is NOT available

These cannot be recovered from the APK:

1. **Original Gradle/Android Studio project** — no `build.gradle`, no original class names
2. **Native C/C++ source** — `libqpicjni156.so` is a compiled binary (image processing JNI)
3. **Unobfuscated names** — some packages use minified names (`p000a`, `p012b`, etc.)

## Build from source

```bash
./scripts/setup-tools.sh   # install apktool + Android SDK tools (first time)
./build.sh                 # compiles source/ → releases/stable.apk
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

Older v9.7 builds (32-bit `armeabi` / `x86` only) will **not install** on many newer phones. This repo uses v10.0 source with `arm64-v8a`.

## Known issues and fixes (this fork)

### Install: "App not compatible with your phone"

**Cause:** APK lacks `arm64-v8a` native libraries (v9.7 and earlier).

**Fix:** Build from this repo’s v10.0 `source/` (includes `lib/arm64-v8a/libqpicjni156.so`). See [CHANGELOG.md](CHANGELOG.md).

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

Based on [WSTxda/QP-Gallery-Releases](https://github.com/WSTxda/QP-Gallery-Releases) **10.0.2 alpha**.

See [CHANGELOG.md](CHANGELOG.md) for fork-specific changes.

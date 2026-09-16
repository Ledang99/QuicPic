# Source Code Guide

This repository contains the **most complete publicly available source** for QuickPic Gallery Mod **v10.0.8**. The original Java/Kotlin Gradle project was never released by the developer — only modded APKs are distributed.

## What is included

| Directory | Format | Purpose |
|-----------|--------|---------|
| `source/` | Smali + XML resources | **Rebuild APK** with apktool (`./build.sh`) |
| `source-java/` | Decompiled Java | **Read and study** app logic in Android Studio / any IDE (v9.7 reference) |
| `source/lib/` | Native binaries | `libqpicjni156.so` — `arm64-v8a`, `armeabi`, `x86` |
| `native/` | C source | Reproducible arm64 compatibility stub for Android 16 |
| `releases/stable.apk` | Signed APK | Pre-built output (v10.0.8) |
| `.github/workflows/android.yml` | GitHub Actions | Automated build on push to `master` |

### App packages (main code)

- **QuickPic UI:** `com.alensw.*` — gallery, viewer, settings, cloud sync
- **Libraries:** `androidx.*`, `org.apache.http.*`, bundled support libs

### File counts (v10.0.8)

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

**Fix:** Build from this repo’s v10.0.8 `source/` (`targetSdk 34`, `arm64-v8a`, `READ_MEDIA_*` permissions). See [CHANGELOG.md](CHANGELOG.md).

### Crash immediately after install (opens then closes)

**Causes:** v10.0.2 alpha lacked Android 13+ `READ_MEDIA_*` permissions. Later startup hardening accidentally returned integer `400` from the boolean `QuickApp.g()` method, which Android 16 ART rejected before creating the application. The arm64 compatibility stub also bundled an obsolete NDK r26b static runtime.

**Fix:** Permissions were added in v10.0.1; v10.0.7 restores valid bytecode and rebuilds the arm64 stub with NDK r29 and flexible 16 KB page support. v10.0.8 adds persistent startup/crash logs and repairs the complete folder-access onboarding flow.

Debug logs are written to the app external-files directory. Once **All files access** is enabled, a directly viewable copy is also appended at `Download/QuickPic-debug.log`.

### “There was a problem parsing the package”

**Cause:** On Android 15/16 devices with 16 KB memory pages, uncompressed native libraries inside the APK must be zip-aligned to 16 KB. Builds that only used 4 KB alignment (`zipalign -p`) were rejected at install time.

**Fix (v10.0.11):** `build.sh` uses build-tools 35+ `zipalign -P 16` and verifies page alignment before publishing `releases/stable.apk`.

### Search toast: “create failed: SecurityException… provider for user 0”

**Cause:** Folder search opens a virtual `LocalFolder("/search")` whose URI is `file:///search`. On Android 8+ (`targetSdk` ≥ 26), `ContentResolver.registerContentObserver` requires a real ContentProvider authority; `file://` URIs have none, so creating the search screen threw and showed the toast.

**Fix (v10.0.12):** `CommonFolder` only registers observers for `content://` URIs with an authority (and catches `SecurityException`). Moments search MediaStore registration is similarly guarded.

### Excluded folder still shown until app restart

**Cause:** Gallery exclude removed the folder from the in-memory album list and only called `requestLayout`. A scan already in progress could re-add the folder, and the grid did not force a full reload with the updated exclude list.

**Fix (v10.0.13):** After exclude, clear folder-scan caches and reload the album grid (same approach as changing excluded folders in settings).

### Full image sideways after rotate (thumbnails OK)

**Cause:** Thumbnails read orientation via ExifCompat, but the full-image loader filled metadata with stubbed JNI `exifGetInfo` (always 0 on arm64) and then forced orientation to 0 when falling back to BitmapFactory bounds.

**Fix (v10.0.14):** Viewer metadata fill uses ExifCompat; bounds fallback preserves the EXIF orientation already read.

### Cold start waits on full album rescan

**Cause:** Cold start began with an empty in-memory album list and only filled it as the type-3 scan posted results, often with a loading empty state.

**Fix (v10.0.14):** Seed album paths from `folder_cache` before scanning; keep the grid visible while background scan discovers new images. Exclude keeps the disk cache (path-scoped invalidation) so reopen stays fast.

### Grid thumbnails / image sideways after rotating

**Cause (arm64):** The compatibility `libqpicjni156.so` stub always failed `exifOpenFD` / `exifSetDegrees`, so rotate appeared to work in the viewer (in-memory matrix) but never wrote EXIF. Reopening the image and regenerating thumbnails used the old orientation.

**Fix (v10.0.10):** `ExifCompat` writes/reads JPEG orientation via Android `ExifInterface`. Rotate also clears in-memory and disk thumbnail caches.

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

# Changelog

All notable changes to this fork ([Ledang99/QuicPic](https://github.com/Ledang99/QuicPic)) are documented here.

## [10.0.7] — 2026-08-22

### Fixed

- **Android 16 instant close** — Restored a valid boolean return from `QuickApp.g()`. A previous resource fallback overwrote the return register with integer `400`, causing Android 16 ART to reject the `Application` class before startup.
- **Modern arm64 runtime** — Rebuilt the arm64 compatibility JNI stub with NDK r29 and flexible 16 KB page support, removing the legacy NDK r26b static C++ runtime from startup.
- **Reproducible arm64 stub** — Added the stub source and build script instead of relying on an opaque prebuilt binary.

## [10.0.6] — 2026-08-22

### Fixed

- **Crash while opening the gallery** — Correctly cast thumbnail decode options before reading QuickPic-specific orientation fields, preventing ART from rejecting the cached-thumbnail method with a verifier error.
- **Cached thumbnail fallback** — Plain Android `BitmapFactory.Options` values continue to use the safe, orientation-neutral decode path.

## [10.0.5] — 2026-08-22

### Fixed

- **Pre-UI Java crashes** — Added top-level safety boundaries around `Application.onCreate` and `GalleryActivity.onCreate`.
- **Visible diagnostics** — Startup exceptions now remain visible as selectable stack traces instead of immediately closing the app.
- **Stale installs** — Incremented `versionCode` so Android and artifact consumers can distinguish this build from upstream Alpha 2.

## [10.0.4] — 2026-08-22

### Fixed

- **Hard crash on launch** — `onActivityStarted` called `QuickApp.b()` with null scanner/thumbnail services when app init failed partway through `onCreate`.
- **Activity base crash** — Guarded framework `getInteger` in `cx.onCreate` (same `Resources.NotFoundException` class of bug fixed earlier in `QuickApp.g()`).
- **Lifecycle cleanup** — Null-safe `QuickApp.d()` and `QuickApp.c()`; `ensureServices()` runs before lifecycle callbacks register.
- **Startup updater** — Disabled auto-update check on cold start (could interrupt launch).

## [10.0.3] — 2026-08-22

### Fixed

- **Crash after granting permissions** — Hardened `ensureServices()` / `ensureBitmapCaches()` when thumbnail DB init fails; null-safe `QuickApp.r` and `QuickApp.v` in album and folder grid controllers.
- **Empty grid after permission grant** — `onRequestPermissionsResult` re-initializes services and recreates the activity when media permissions are granted.

## [10.0.2] — 2026-08-22

### Fixed

- **"create failed: NullPointerException"** — Gallery grid failed to load when `QuickApp` services (`o`, `v`) were not initialized. Added `ensureServices()`, null-safe thumbnail cache access, and split app init into separate try blocks.
- **Thumbnail grid empty** — Same root cause; folder/album view could not create without media scanner and bitmap cache services.

## [10.0.1] — 2026-08-22

### Fixed

- **Crash on launch (Android 13+)** — Request `READ_MEDIA_IMAGES` / `READ_MEDIA_VIDEO` at runtime (manifest alone was insufficient).
- **Crash on launch (some devices)** — Guard all-files access settings intent with `resolveActivity` before `startActivity`.
- **Hard exit on init errors** — Removed `System.exit()` from `QuickApp.onCreate` so recoverable init failures do not kill the app instantly.
- **"Not compatible" on Android 15+** — v9.7 hybrid used `targetSdk 23` (blocked on Android 15). v10.0 base uses `targetSdk 34`.

## [9.7.1] — 2026-08-22 (superseded)

### Fixed

- **Crash on launch** — Attempted v9.7 stable + arm64 hybrid. **Do not use on Android 15+** — blocked due to `targetSdk 23`.

## [10.0] — 2026-08-22

### Fixed

- **Thumbnail orientation after rotate** — Grid thumbnails could stay sideways after rotating an image 90°/180°. Cached thumbnails now preserve EXIF orientation when loaded, and the disk preview cache is cleared after each rotate.
- **64-bit phone install** — Replaced v9.7 (32-bit only) source with v10.0.2 alpha including `arm64-v8a` native libraries. Fixes *"App not installed as app isn't compatible with your phone"* on modern devices. **Superseded by v9.7.1 hybrid** (stable base + arm64).
- **GitHub Actions CI** — Workflow now runs `./build.sh` (apktool) instead of Gradle, which does not exist in this repo.

### Added

- **`source/`** — Decompiled smali + resources (v10.0) for rebuilding APKs
- **`source-java/`** — Decompiled Java reference (from v9.7; browse-only)
- **`build.sh`** — One-command compile, align, and sign
- **`scripts/setup-tools.sh`** — Install apktool and Android SDK build-tools
- **`SOURCE.md`** — Source code guide and limitations
- **CI artifact** — `releases/stable.apk` uploaded on every successful build

### Technical details (rotation fix)

| Component | Change |
|-----------|--------|
| `com/alensw/b/h/h.smali` | `a([B], Options)` now applies `a.b` / `a.c` orientation when decoding cached thumbnail JPEG bytes |
| `com/alensw/ui/c/as.smali` | After rotate, call `ao.a(uri, true)` to clear disk preview cache |
| `com/alensw/ui/c/dp.smali` | Same disk cache clear on alternate viewer rotate path |

If thumbnails still look wrong after upgrading, clear the app cache once or re-open the album to force thumbnail regeneration.

## Upstream reference

Based on [WSTxda/QP-Gallery-Releases](https://github.com/WSTxda/QP-Gallery-Releases) **10.0.2 alpha** with manifest fixes for modern Android.

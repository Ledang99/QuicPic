# Changelog

All notable changes to this fork ([Ledang99/QuicPic](https://github.com/Ledang99/QuicPic)) are documented here.

## [10.0.1] — 2026-08-22

### Fixed

- **"Not compatible" on Android 15+** — The v9.7 hybrid used `targetSdkVersion 23`, which Android 15 blocks at install time (shows as *"App not installed as app isn't compatible with your phone"*). Reverted to v10.0 base with `targetSdk 34` and `minSdk 26`.
- **Crash on launch** — Added missing Android 13+ media permissions (`READ_MEDIA_IMAGES`, `READ_MEDIA_VIDEO`, etc.) to v10 manifest. Removed `android:debuggable="true"` and fixed invalid `largeHeap` attribute.

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

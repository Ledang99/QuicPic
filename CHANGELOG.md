# Changelog

All notable changes to this fork ([Ledang99/QuicPic](https://github.com/Ledang99/QuicPic)) are documented here.

## [9.7.1] — 2026-08-22

### Fixed

- **Crash on launch** — Reverted build base from unstable v10.0.2 alpha to **v9.7 stable**, while keeping `arm64-v8a` native libraries from v10. The alpha build installed on 64-bit phones but crashed at startup (missing Android 13+ media permissions, WIP code). The hybrid build is stable and installs on modern devices.

### Technical details (launch crash)

| Issue | v10 alpha | v9.7.1 hybrid |
|-------|-----------|---------------|
| Base code | 10.0.2 alpha (WIP) | 9.7 stable |
| `arm64-v8a` | Yes | Yes (lib from v10) |
| `READ_MEDIA_*` permissions | Missing | Present |
| `android:debuggable` | `true` | Not set |

Rotation thumbnail fixes from [10.0] are retained in the hybrid source.

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

Based on [WSTxda/QP-Gallery-Releases](https://github.com/WSTxda/QP-Gallery-Releases) **9.7 stable** + `arm64-v8a` from **10.0.2 alpha**.

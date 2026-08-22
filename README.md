# QuickPic Gallery Mod (QuicPic)

[![Platform](https://img.shields.io/badge/android-platform?style=for-the-badge&label=platform&labelColor=21262d&color=6e7681)](https://www.android.com) [![API](https://img.shields.io/badge/26%2B-level?style=for-the-badge&logo=android&logoColor=3cd382&label=API&labelColor=21262d&color=ff663b)](https://developer.android.com/studio/releases/platforms) [![Release](https://img.shields.io/github/v/release/WSTxda/QP-Gallery-Releases?display_name=tag&style=for-the-badge&logo=github&labelColor=21262d&color=1f6feb)](https://github.com/WSTxda/QP-Gallery-Releases/releases/latest)

![alt text](https://raw.githubusercontent.com/WSTxda/QP-Gallery-Releases/master/Images/Banner.svg)

A modernized version of the classic QuickPic Gallery, focused on speed, stability, and simplicity.
This fork includes decompiled source, a reproducible build pipeline, **64-bit ARM support**, and bug fixes for modern devices.

<details>
  <summary>Screenshots</summary>

![Screenshot](https://raw.githubusercontent.com/WSTxda/QP-Gallery-Releases/master/Images/Screenshots.png)

</details>

## Quick start

```bash
git clone https://github.com/Ledang99/QuicPic.git
cd QuicPic
./scripts/setup-tools.sh   # first time only
./build.sh                 # → releases/stable.apk
```

Install `releases/stable.apk` on your device (Android 8.0+).

## Source code

| Path | Description |
|------|-------------|
| [`source/`](source/) | Smali + resources (v9.7.1) — edit here, then `./build.sh` |
| [`source-java/`](source-java/) | Decompiled Java — browse in IDE (reference) |
| [`SOURCE.md`](SOURCE.md) | Full source guide, compatibility, limitations |
| [`CHANGELOG.md`](CHANGELOG.md) | Fork changes and bug fixes |

> The original Gradle/Android Studio project was never published. Development uses the apktool/smali workflow described in [SOURCE.md](SOURCE.md).

## Device support

| | |
|---|---|
| **Android** | 8.0+ (API 26) |
| **arm64-v8a** | Modern phones (Samsung, etc.) |
| **armeabi / x86** | Older 32-bit devices and emulators |

## Recent fixes (this fork)

- **Launch crash** — Stable v9.7 base + arm64 (fixes crash after install on 64-bit phones)
- **64-bit install** — `arm64-v8a` native libs (fixes incompatible-with-your-phone errors)
- **Rotation thumbnails** — Grid thumbnails keep correct orientation after rotating images
- **CI build** — GitHub Actions builds APK with apktool on every push to `master`

Details: [CHANGELOG.md](CHANGELOG.md)

## Build & CI

- **Local:** `./scripts/setup-tools.sh` then `./build.sh`
- **CI:** [GitHub Actions](https://github.com/Ledang99/QuicPic/actions) — download **QuicPic-stable-apk** from the latest successful run

## Upstream

Mod by [WSTxda](https://github.com/WSTxda/QP-Gallery-Releases). This repo adds source, build tooling, and fixes for [Ledang99/QuicPic](https://github.com/Ledang99/QuicPic).

### Download upstream releases

[<img src="https://raw.githubusercontent.com/WSTxda/WSTxda/main/images/GitHub.svg"
	  alt='Get it on GitHub'
	  height="80">](https://github.com/WSTxda/QP-Gallery-Releases/releases/latest) [<img src="https://raw.githubusercontent.com/WSTxda/WSTxda/main/images/Telegram.svg"
	  alt='Get it on Telegram'
	  height="80">](https://t.me/WSTprojects)

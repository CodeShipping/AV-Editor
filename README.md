# AV Editor

A simple, powerful video audio editor for Android. Add music to videos, remove audio, adjust speed, and change quality — all processed on-device with no watermarks.

## Features

- **Add/Replace Audio** — Add music or sound to any video
- **Remove Audio** — Mute videos completely
- **Speed Control** — 0.25x to 2.0x playback speed
- **Quality Control** — Convert to 240p-2160p (4K)
- **No Watermark** — Clean output videos
- **Offline Processing** — Works without internet
- **Save to Gallery** — Direct export to device storage

## Screenshots

[Add screenshots here]

## Download

Available on Google Play Store (coming soon)

## Building from Source

### Requirements
- Flutter 3.13.5+
- Android SDK with API 36+
- Java 17+

### Setup
```bash
git clone https://github.com/CodeShipping/AV-Editor.git
cd AV-Editor
flutter pub get
flutter run --flavor development -t lib/main_development.dart
```

### Build Release
```bash
flutter build apk --flavor production --release -t lib/main_production.dart
```

## Attribution

This project is a modified version of [VSound](https://github.com/BBKDevelopment/VSound) by BBK Development.

**Original:** Copyright © 2021-2023 BBK Development  
**Modified:** Copyright © 2026 CodeShipping

See [NOTICE](NOTICE) for detailed attribution and modifications.

## License

This project is licensed under **GNU General Public License v3.0**.

- ✅ Free to use, modify, and distribute
- ✅ Commercial use allowed
- ✅ Must remain open source (GPL v3)
- ✅ Must provide source code to users

See [LICENSE](LICENSE) for full terms.

## Contributing

Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Contact

- **Email:** contact@codeshipping.org
- **Issues:** [GitHub Issues](https://github.com/CodeShipping/AV-Editor/issues)
- **Original Author:** BBK Development (hello@bbkdevelopment.com)

---

**Note:** This app is GPL v3 licensed. Source code must be made available to users as required by the license.
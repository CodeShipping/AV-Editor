# Contributing to AV Editor

Thank you for your interest in contributing to AV Editor!

## About This Project

AV Editor is a modified version of [VSound](https://github.com/BBKDevelopment/VSound) by BBK Development. It's a video audio editor that allows users to add/remove audio from videos, adjust playback speed, and change video quality.

## License

This project is licensed under **GPL v3**. By contributing, you agree that your contributions will be licensed under the same GPL v3 license.

## How to Contribute

### Reporting Bugs
- Check existing issues first
- Provide detailed description
- Include steps to reproduce
- Mention device/OS version
- Include relevant logs/screenshots

### Suggesting Features
- Check if feature already exists or is planned
- Explain the use case
- Describe expected behavior

### Submitting Pull Requests

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make your changes**
   - Follow existing code style
   - Add comments for complex logic
   - Update documentation if needed
4. **Test thoroughly**
   - Run `flutter analyze`
   - Test on real devices
   - Verify builds work
5. **Commit with clear messages**
   ```bash
   git commit -m "feat: add video trimming feature"
   ```
6. **Push and create PR**
   ```bash
   git push origin feature/your-feature-name
   ```

### Code Style

- Follow Dart/Flutter conventions
- Use `very_good_analysis` lints (already configured)
- Keep functions focused and small
- Add documentation for public APIs
- Use meaningful variable names

### Building the Project

```bash
# Get dependencies
flutter pub get

# Run in development
flutter run --flavor development -t lib/main_development.dart

# Build release APK
flutter build apk --flavor production --release -t lib/main_production.dart
```

## Development Setup

### Prerequisites
- Flutter SDK 3.13.5+
- Dart 3.10+
- Android Studio / VS Code
- Android SDK with API 36+
- Java 17+

### Project Structure
```
lib/
├── src/
│   ├── app/           # App-level logic
│   ├── components/    # Reusable widgets
│   ├── config/        # Configuration (themes, etc.)
│   ├── core/          # Core utilities, services, constants
│   └── presentation/  # UI screens
└── main_*.dart        # Entry points for each flavor
```

## Questions?

- Open an issue for questions
- Contact: contact@codeshipping.org

## Attribution

Remember to maintain attribution to the original VSound project by BBK Development in any derivative works, as required by GPL v3.

---

**Thank you for contributing!**
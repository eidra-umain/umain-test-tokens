# Design Tokens

This repository contains design tokens for iOS and Android, automatically processed with Style Dictionary.

## Files

- `tokens.json` - Main design tokens file (iOS format, automatically generated)
- `tokens-ios.json` - iOS-specific design tokens (JSON format)
- `tokens-android.json` - Android-specific design tokens (JSON format)
- `dispatches/tokens.json` - Source tokens file (updated by plugin)
- `dist/ios/` - iOS build output (JSON + PLIST formats)
- `dist/android/` - Android build output (JSON + XML formats)

## Formats

- **iOS**: JSON flat format + PLIST for iOS development
- **Android**: JSON flat format + XML for Android development
- **Source Format**: Original plugin format for editing

## Usage

The tokens are automatically processed with Style Dictionary for iOS and Android platforms.
The plugin updates `dispatches/tokens.json` and this workflow transforms them for mobile development.

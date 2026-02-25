# UmainTokensSPM

A Swift Package Manager (SPM) library providing design tokens for iOS, macOS, tvOS, and watchOS. This package includes generated design tokens including colors, typography, spacing, sizing, and more, making it easy to maintain consistent design across your apps.

## Features

- 🎨 **Semantic Colors** - Adaptive colors that automatically adjust for light/dark mode
- 🎨 **Palette Colors** - Complete color palette with organized naming
- ✏️ **Typography** - Font sizes, line heights, and weights
- 📏 **Spacing** - Consistent spacing system
- 🎯 **Sizing Tokens** - Icon sizes, image sizes, border radius, and more
- 📱 **Device & Orientation** - Responsive layout tokens
- 🔍 **Token Discovery** - Built-in SwiftUI view to browse all tokens

## Requirements

- iOS 13.0+ / macOS 10.15+ / tvOS 13.0+ / watchOS 6.0+
- Swift 5.5+
- Xcode 13.0+

Note: `TokenShowcaseView` requires iOS 15.0+ / macOS 12.0+

## Installation

### Swift Package Manager

1. In Xcode, go to **File** → **Add Package Dependencies…**
2. Enter the repository URL: `https://github.com/umain/UmainTokensSPM`
3. Select the version or branch you want to use
4. Add `UmainDesignToken` to your target

Or add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/umain/UmainTokensSPM", from: "1.0.0")
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "UmainDesignToken", package: "UmainTokensSPM")
        ]
    )
]
```

## Usage

### Colors

#### Semantic Colors (Recommended)

Semantic colors automatically adapt to light/dark mode:

```swift
import SwiftUI
import UmainDesignToken

// SwiftUI
struct MyView: View {
    var body: some View {
        VStack {
            Text("Hello")
                .foregroundColor(Color.semantic(.primaryFg))
            Rectangle()
                .fill(Color.semantic(.primary))
        }
    }
}
```

```swift
import UIKit
import UmainDesignToken

// UIKit
label.textColor = UIColor.semantic(.primaryFg)
view.backgroundColor = UIColor.semantic(.primary)
```

Available semantic colors include:
- `.primary`, `.primaryFg`, `.primaryStroke`
- `.secondary`, `.secondaryFg`, `.secondaryStroke`
- `.tertiary`, `.tertiaryFg`, `.tertiaryStroke`
- `.brand`, `.brandStroke`, `.coloronbrand`
- `.error`, `.errorFg`, `.errorStroke`
- `.success`, `.successFg`, `.successStroke`
- `.warning`, `.warningStroke`
- `.link`, `.divider`, `.active`
- And more...

#### Palette Colors

Access specific palette colors directly:

```swift
// SwiftUI
Rectangle()
    .fill(Palette.greyscale800)
    .background(Palette.gold400)

// UIKit
view.backgroundColor = Palette.greyscale800UIKit
label.textColor = Palette.blue700UIKit
```

### Typography

```swift
// Typography sizes
let headlineSize = TypographySizes.h1 // 32.0
let bodySize = TypographySizes.paragraphM // 24.0
let lineHeight = TypographySizes.h1LineHeight // 44.0

// Typography fonts
let fontName = TypographyFonts.bodyLargeLarge // "Roboto"
let fontSize = TypographyFonts.bodyLargeSize // 16.0
let fontWeight = TypographyFonts.bodyLargeWeight // "Regular"
```

### Spacing

```swift
VStack(spacing: Spacing.medium) {
    Text("Content")
        .padding(.horizontal, Spacing.large)
        .padding(.vertical, Spacing.small)
}
```

### Border Radius

```swift
RoundedRectangle(cornerRadius: BorderRadius.m) // 8.0
Capsule()
    .frame(width: 100, height: 44)
    .cornerRadius(BorderRadius.l) // 12.0
```

### Icon & Image Sizes

```swift
// Icon sizes
Image(systemName: "star")
    .frame(width: IconSize.m, height: IconSize.m) // 24.0

// Image sizes
AsyncImage(url: imageURL)
    .frame(width: ImageSize.l, height: ImageSize.l) // 152.0
```

### Device & Orientation Tokens

```swift
// Responsive layout values
let maxWidth = DeviceOrientation.maxcolumnwidthPortrait
let safeAreaInset = DeviceOrientation.hsafeareainsetLandscape
```

## Token Showcase

Browse all available tokens visually with the built-in `TokenShowcaseView`:

```swift
import SwiftUI
import UmainDesignToken

struct TokensBrowserView: View {
    var body: some View {
        TokenShowcaseView()
    }
}
```

This view displays all tokens in organized sections with visual examples and code snippets showing how to use each token.

## License

[Add your license here]

## Contributing

This package contains generated tokens. To update tokens, use the token generation tool rather than editing files directly.

# Migration Guide: DesignStyle → UmainTokensSPM

This guide helps you migrate from the old `DesignStyle` folder tokens to the new `UmainTokensSPM` package.

## Overview

The new package provides a more structured and maintainable approach to design tokens with:
- ✅ Better organization and naming
- ✅ Automatic light/dark mode support for semantic colors
- ✅ Swift Package Manager integration
- ✅ Type-safe token access
- ✅ Comprehensive token showcase view

## Installation

1. Add the package dependency:
```swift
dependencies: [
    .package(url: "https://github.com/umain/UmainTokensSPM", from: "1.0.0")
]
```

2. Import in your files:
```swift
import UmainDesignToken
```

## Migration Mapping

### 1. Spacing/Padding

**Old (DesignStyle/DS/PaddingSizes.swift):**
```swift
enum PaddingSize: CGFloat {
    case xxSmall  // 2pt
    case xSmall   // 4pt
    case small    // 8pt
    case medium   // 12pt
    case large    // 16pt
    case xLarge   // 20pt
    case xxLarge  // 24pt
    case xxxLarge // 32pt
    case xxxxLarge // 40pt
}

// Usage
.padding(.medium)
.padding(PaddingSize.large.value)
```

**New (UmainTokensSPM):**
```swift
enum Spacing {
    case xxsmall  // 2.0
    case xsmall   // 4.0
    case small    // 8.0
    case medium   // 12.0
    case large    // 16.0
    case xlarge   // 20.0
    case xxlarge  // 24.0
    case xxxlarge // 32.0
    case xxxxlarge // 40.0
}

// Usage
.padding(Spacing.medium.value)
.padding(.horizontal, Spacing.large.value)
```

**Migration:**
- `PaddingSize.xxSmall` → `Spacing.xxsmall.value`
- `PaddingSize.xSmall` → `Spacing.xsmall.value`
- `PaddingSize.small` → `Spacing.small.value`
- `PaddingSize.medium` → `Spacing.medium.value`
- `PaddingSize.large` → `Spacing.large.value`
- `PaddingSize.xLarge` → `Spacing.xlarge.value`
- `PaddingSize.xxLarge` → `Spacing.xxlarge.value`
- `PaddingSize.xxxLarge` → `Spacing.xxxlarge.value`
- `PaddingSize.xxxxLarge` → `Spacing.xxxxlarge.value`

**Note:** Also available as `SpatialSystem` with the same values.

---

### 2. Corner Radius

**Old (DesignStyle/CornerRadiusDS/CornerRadiusDS.swift):**
```swift
enum CornerRadiusSize {
    case xxxSmall  // 2px
    case xxSmall   // 4px
    case xSmall    // 6px
    case small     // 8px
    case medium    // 12px
    case large     // 16px
    case xLarge    // 24px
}

// Usage
.cornerRadius(CornerRadiusSize.medium.value)
```

**New (UmainTokensSPM):**
```swift
enum CornerRadius {
    case xs   // 2.0
    case s    // 4.0
    case m    // 8.0
    case l    // 12.0
    case xl   // 16.0
    case xxl  // 24.0
    case xxxl // 40.0
    case infinity // 2400.0
}

// Usage
.cornerRadius(CornerRadius.m.value)
RoundedRectangle(cornerRadius: CornerRadius.l.value)
```

**Migration:**
- `CornerRadiusSize.xxxSmall` (2px) → `CornerRadius.xs.value` (2.0)
- `CornerRadiusSize.xxSmall` (4px) → `CornerRadius.s.value` (4.0)
- `CornerRadiusSize.xSmall` (6px) → `CornerRadius.s.value` (4.0) *Note: closest match*
- `CornerRadiusSize.small` (8px) → `CornerRadius.m.value` (8.0)
- `CornerRadiusSize.medium` (12px) → `CornerRadius.l.value` (12.0)
- `CornerRadiusSize.large` (16px) → `CornerRadius.xl.value` (16.0)
- `CornerRadiusSize.xLarge` (24px) → `CornerRadius.xxl.value` (24.0)

---

### 3. Colors

**Old (DesignStyle/FigmaExport/Color+Extension.swift):**
```swift
// Palette colors
Color.uiPaletteGold400
Color.uiPaletteBlue300
Color.uiPaletteGreyscale800

// Semantic colors (manual light/dark)
Color.darkBackgroundPrimary
Color.lightBackgroundPrimary
Color.darkForegroundPrimary
Color.lightForegroundPrimary
```

**New (UmainTokensSPM):**
```swift
// Palette colors
Palette.gold400.value
Palette.blue300.value
Palette.value800.value  // greyscale800

// Semantic colors (automatic light/dark)
Color.semantic(.BgPrimary)      // Auto-adapts to light/dark
Color.semantic(.FgPrimary)      // Auto-adapts to light/dark
UIColor.semantic(.BgPrimary)    // UIKit version
```

**Migration:**

**Palette Colors:**
- `Color.uiPaletteGold100` → `Palette.gold100.value`
- `Color.uiPaletteGold400` → `Palette.gold400.value`
- `Color.uiPaletteGold700` → `Palette.gold700.value`
- `Color.uiPaletteBlue300` → `Palette.blue300.value`
- `Color.uiPaletteBlue700` → `Palette.blue700.value`
- `Color.uiPaletteGreyscale100` → `Palette.valueUipaletteGreyscaleValue100.value`
- `Color.uiPaletteGreyscale200` → `Palette.value200.value`
- `Color.uiPaletteGreyscale300` → `Palette.valueUipaletteGreyscaleValue300.value`
- `Color.uiPaletteGreyscale400` → `Palette.valueUipaletteGreyscaleValue400.value`
- `Color.uiPaletteGreyscale500` → `Palette.value500.value`
- `Color.uiPaletteGreyscale600` → `Palette.value600.value`
- `Color.uiPaletteGreyscale700` → `Palette.valueUipaletteGreyscaleValue700.value`
- `Color.uiPaletteGreyscale800` → `Palette.value800.value`
- `Color.uiPaletteGreyscale900` → `Palette.value900.value`
- `Color.uiPaletteGreyscaleWhite` → `Palette.white.value`

**Semantic Colors (Recommended):**
- `Color.darkBackgroundPrimary` / `Color.lightBackgroundPrimary` → `Color.semantic(.BgPrimary)`
- `Color.darkForegroundPrimary` / `Color.lightForegroundPrimary` → `Color.semantic(.FgPrimary)`
- `Color.darkBackgroundSecondary` / `Color.lightBackgroundSecondary` → `Color.semantic(.BgSecondary)`
- `Color.darkForegroundSecondary` / `Color.lightForegroundSecondary` → `Color.semantic(.FgSecondary)`
- `Color.darkBackgroundBrand` / `Color.lightBackgroundBrand` → `Color.semantic(.BgBrand)`
- `Color.darkForegroundError` / `Color.lightForegroundError` → `Color.semantic(.FgError)`
- `Color.darkForegroundLink` / `Color.lightForegroundLink` → `Color.semantic(.link)`

**Full Semantic Color List:**
- `.BgPrimary`, `.FgPrimary`, `.StrokePrimary`
- `.BgSecondary`, `.FgSecondary`, `.StrokeSecondary`
- `.BgTertiary`, `.FgTertiary`, `.StrokeTertiary`
- `.BgBrand`, `.colorOnBrand`, `.StrokeBrand`
- `.BgError`, `.FgError`, `.StrokeError`
- `.BgSuccess`, `.FgSuccess`, `.StrokeSuccess`
- `.BgWarning`, `.StrokeWarning`
- `.accent`, `.accentAccessible`, `.accent1`, `.accent2`, `.accent3`
- `.active`, `.divider`, `.link`, `.quaternary`
- `.BgInverted`, `.FgInverted`
- `.primaryDisabled`, `.primaryPressed`, `.secondaryPressed`

---

### 4. Typography

**Old (DesignStyle/FigmaExport/Font+Extension.swift):**
```swift
Font.headlineLarge
Font.bodyMedium
Font.paragraphSmall
```

**New (UmainTokensSPM):**
```swift
// Typography sizes
TypographySizes.headlineLargeSize.value
TypographySizes.bodyMediumSize.value
TypographySizes.bodySmallSize.value

// Typography weights
TypographySizes.headlineLargeWeight.value
TypographySizes.bodyMediumWeight.value

// Typography line heights
TypographySizes.headlineLargeLineHeight.value
TypographySizes.bodyMediumLineHeight.value

// Typography fonts
TypographySizes.headlineLargeFont.value
TypographySizes.bodyMediumFont.value

// Or use Font extension
Font.headlineLarge
Font.bodyMedium
Font.bodySmall
```

**Migration:**
- Check `TypographySizes` enum for all available tokens
- Font extensions are available for common styles
- Access individual properties (size, weight, lineHeight, font) as needed

---

### 5. Icon Sizes

**Old (DesignStyle/ScaledIcon.swift):**
```swift
// Check ScaledIcon implementation
```

**New (UmainTokensSPM):**
```swift
enum IconSize {
    case xxs  // 12.0
    case xs   // 16.0
    case s    // 20.0
    case m    // 24.0
    case l    // 32.0
}

// Usage
Image(systemName: "star")
    .frame(width: IconSize.m.value, height: IconSize.m.value)
```

**Migration:**
- Replace old icon size references with `IconSize` enum values
- Use `.value` to get the CGFloat value

---

### 6. Gradients

**Old (DesignStyle/Gradients.swift):**
```swift
// Check Gradients implementation
```

**New (UmainTokensSPM):**
```swift
enum Gradientstops {
    case FadeprimarybgStop01
    case FadesecondarybgStop01
    case FadeprimarybgStop02
    case FadesecondarybgStop02
}

// Usage
Color.semantic(.FadeprimarybgStop01)
```

---

## Step-by-Step Migration Process

1. **Add the package dependency** to your project
2. **Import UmainDesignToken** in files that use design tokens
3. **Replace old token references** using the mapping above
4. **Test thoroughly** - especially semantic colors in light/dark mode
5. **Remove old DesignStyle folder** once migration is complete

## Benefits of Migration

- ✅ **Automatic light/dark mode** - Semantic colors adapt automatically
- ✅ **Type safety** - Compile-time checking of token names
- ✅ **Centralized updates** - Update tokens in one place
- ✅ **Better organization** - Clear separation of concerns
- ✅ **Package management** - Version control via SPM
- ✅ **Visual showcase** - Use `TokenShowcaseView()` to browse all tokens

## Finding Token Values

Use the built-in showcase view to explore all available tokens:

```swift
import SwiftUI
import UmainDesignToken

struct TokenBrowser: View {
    var body: some View {
        TokenShowcaseView()
    }
}
```

## Need Help?

- Check `TokenShowcaseView()` for visual token reference
- Review token files in `Sources/UmainDesignToken/Tokens/`
- All tokens are documented with comments


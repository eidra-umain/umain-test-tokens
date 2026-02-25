# Usage Examples with Accessibility Features

This document shows how to use UmainDesignToken fonts with accessibility features similar to the old DesignStyle implementation.

## Basic Font Usage

```swift
import SwiftUI
import UmainDesignToken

// Simple usage - fonts automatically scale with Dynamic Type
Text("Hello World")
    .font(.headlineLarge)
```

## With Accessibility Features

### Headlines with Accessibility

```swift
import SwiftUI
import UmainDesignToken

struct Headline1: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.headlineLarge)
            .foregroundColor(color)
            .fixedSize(horizontal: false, vertical: true)
            .accessibilityAddTraits(.isHeader)
            .dynamicTypeSize(...DynamicTypeSize.accessibility2)
    }
}

// Usage
Headline1("Main Title")
```

### Body Text with Accessibility

```swift
struct ParagraphMediumRegular: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.bodyMedium)
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility1)
            .textSelection(.enabled) // Improves keyboard navigation
    }
}

// Usage
ParagraphMediumRegular("This is body text")
```

### Labels with Accessibility

```swift
struct LabelMedium: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgSecondary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.labelMedium)
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility1)
    }
}

// Usage
LabelMedium("Label text")
```

## Complete Example: Reusable Text Components

```swift
import SwiftUI
import UmainDesignToken

// MARK: - Headlines

struct Headline0: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.displayLarge)
            .foregroundColor(color)
            .accessibilityAddTraits(.isHeader)
            .dynamicTypeSize(...DynamicTypeSize.xLarge)
    }
}

struct Headline1: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.headlineLarge)
            .foregroundColor(color)
            .fixedSize(horizontal: false, vertical: true)
            .accessibilityAddTraits(.isHeader)
            .dynamicTypeSize(...DynamicTypeSize.accessibility2)
    }
}

struct Headline2: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.headlineMedium)
            .foregroundColor(color)
            .accessibilityAddTraits(.isHeader)
            .dynamicTypeSize(...DynamicTypeSize.accessibility2)
    }
}

struct Headline3: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.headlineSmall)
            .foregroundColor(color)
            .accessibilityAddTraits(.isHeader)
            .dynamicTypeSize(...DynamicTypeSize.accessibility2)
    }
}

// MARK: - Body Text

struct ParagraphLarge: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.bodyLarge)
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility1)
            .textSelection(.enabled)
    }
}

struct ParagraphMedium: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.bodyMedium)
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility1)
            .textSelection(.enabled)
    }
}

struct ParagraphSmall: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.bodySmall)
            .foregroundColor(color)
            .dynamicTypeSize(.medium...DynamicTypeSize.accessibility1)
            .textSelection(.enabled)
    }
}

// MARK: - Links

struct ParagraphMediumLink: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.link)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.bodyMedium)
            .underline()
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility1)
    }
}

// MARK: - Labels

struct LabelLarge: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgSecondary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.labelLarge)
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility1)
    }
}

struct LabelMedium: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgSecondary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.labelMedium)
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility1)
    }
}

struct LabelSmall: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgSecondary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.labelSmall)
            .foregroundColor(color)
            .dynamicTypeSize(.large...DynamicTypeSize.accessibility1)
    }
}

// MARK: - Titles

struct TitleLarge: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.titleLarge)
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility2)
    }
}

struct TitleMedium: View {
    let content: String
    let color: Color
    
    init(_ content: String, color: Color = Color.semantic(.FgPrimary)) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        Text(content)
            .font(.titleMedium)
            .foregroundColor(color)
            .dynamicTypeSize(...DynamicTypeSize.accessibility1)
    }
}

// MARK: - Usage Example

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Spacing.medium.value) {
                Headline0("Display Large")
                Headline1("Headline Large")
                Headline2("Headline Medium")
                Headline3("Headline Small")
                
                TitleLarge("Title Large")
                TitleMedium("Title Medium")
                
                ParagraphLarge("Body Large - This is larger body text that supports text selection and scales with Dynamic Type.")
                ParagraphMedium("Body Medium - Regular body text with full accessibility support.")
                ParagraphSmall("Body Small - Smaller body text for secondary information.")
                
                ParagraphMediumLink("This is a link")
                
                LabelLarge("Label Large")
                LabelMedium("Label Medium")
                LabelSmall("Label Small")
            }
            .padding(Spacing.large.value)
        }
    }
}

// MARK: - Preview

#if DEBUG
#Preview {
    ContentView()
        .preferredColorScheme(.light)
    
    ContentView()
        .preferredColorScheme(.dark)
}
#endif
```

## Key Accessibility Features Explained

### 1. Dynamic Type Size Limits
```swift
.dynamicTypeSize(...DynamicTypeSize.accessibility2)
```
- Limits how large text can grow
- Prevents UI breaking at extreme sizes
- Different limits for different text styles

### 2. Accessibility Traits
```swift
.accessibilityAddTraits(.isHeader)
```
- Marks text as a header for screen readers
- Improves navigation for VoiceOver users

### 3. Text Selection
```swift
.textSelection(.enabled)
```
- Allows users to select and copy text
- Improves keyboard navigation in scroll views

### 4. Fixed Size (for Headlines)
```swift
.fixedSize(horizontal: false, vertical: true)
```
- Prevents text from being compressed horizontally
- Allows wrapping to multiple lines

### 5. Semantic Colors
```swift
Color.semantic(.FgPrimary)
```
- Automatically adapts to light/dark mode
- Better than hardcoded colors

## Migration from Old DesignStyle

**Old:**
```swift
Headline1("Title")
ParagraphMediumRegular("Body text")
```

**New:**
```swift
Headline1("Title")  // Same usage!
ParagraphMedium("Body text")  // Similar naming
```

The View wrappers work the same way, just using the new font extensions under the hood.


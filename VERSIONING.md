# Versioning Guide

This package uses semantic versioning (SemVer) and automatically creates releases when token files are updated.

## How Versioning Works

### Automatic Versioning

When a Pull Request is merged to `main` that updates files in `Sources/UmainDesignToken/Tokens/`, the CI automatically:

1. **Detects token file changes** - Checks if any token files were modified
2. **Increments patch version** - Automatically bumps the patch version (e.g., `v1.0.0` → `v1.0.1`)
3. **Creates Git tag** - Creates a new version tag
4. **Creates GitHub Release** - Publishes a new release with the tag

### Version Format

Versions follow [Semantic Versioning](https://semver.org/):
- **MAJOR.MINOR.PATCH** (e.g., `v1.2.3`)
- **MAJOR**: Breaking changes (rare for tokens)
- **MINOR**: New tokens added (backward compatible)
- **PATCH**: Token value updates (default for token PRs)

### Manual Versioning

You can also manually trigger a release with a specific version bump:

1. Go to **Actions** tab in GitHub
2. Select **Create Release** workflow
3. Click **Run workflow**
4. Choose version type:
   - **patch**: Bug fixes, token value updates (default)
   - **minor**: New tokens added
   - **major**: Breaking changes

## Using Versions

### Pin to Specific Version

```swift
dependencies: [
    .package(url: "https://github.com/umain/UmainTokensSPM", exact: "1.0.0")
]
```

### Use Version Range

```swift
dependencies: [
    .package(url: "https://github.com/umain/UmainTokensSPM", from: "1.0.0")  // >= 1.0.0, < 2.0.0
]
```

### Use Up to Next Major

```swift
dependencies: [
    .package(url: "https://github.com/umain/UmainTokensSPM", "1.0.0"..<"2.0.0")
]
```

### Use Latest from Branch

```swift
dependencies: [
    .package(url: "https://github.com/umain/UmainTokensSPM", branch: "main")
]
```

## CI/CD Workflow

### Release Workflow (`.github/workflows/release.yml`)

**Triggers:**
- PR merged to `main` with token file changes
- Manual workflow dispatch

**Actions:**
1. Checks if token files changed
2. Gets latest version tag
3. Increments version (patch by default)
4. Creates Git tag
5. Creates GitHub Release

### CI Workflow (`.github/workflows/ci.yml`)

**Triggers:**
- PR opened/updated
- Push to `main`

**Actions:**
1. Builds the package
2. Runs tests (if any)

## Release Notes

Each release automatically includes:
- Version number
- Installation instructions
- Basic changelog template

You can manually edit release notes after creation to add more details about what changed.

## Best Practices

1. **Token Updates** → Auto patch version bump
2. **New Tokens** → Consider manual minor version bump
3. **Breaking Changes** → Manual major version bump
4. **Review Releases** → Edit release notes with specific changes

## Checking Current Version

```bash
# List all tags
git tag -l

# Get latest tag
git describe --tags --abbrev=0
```

## Example Workflow

1. CI creates PR with updated token files
2. PR is reviewed and merged to `main`
3. Release workflow automatically:
   - Detects token changes
   - Creates tag `v1.0.1`
   - Creates GitHub Release
4. Package is now available as version `1.0.1` for SPM





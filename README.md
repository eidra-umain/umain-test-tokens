# Design Tokens Repository

This repository contains design tokens for the project.

## Files

- `tokens.json` - The main design tokens file (automatically generated)
- `dispatches/tokens.json` - Source tokens file

## Usage

The tokens are automatically processed and made available in the root directory through GitHub Actions.

## GitHub Actions

This repository uses GitHub Actions to:
1. Process design tokens on every push to main branch
2. Make tokens visible in the repository root
3. Automatically commit and push changes

## Setup

1. Make sure GitHub Actions are enabled in your repository settings
2. The workflow will run automatically on pushes to the main branch
3. Tokens will be available at the root level as `tokens.json`

## Token Structure

The tokens follow a hierarchical structure with categories like:
- Core/Main (Colors, Typography, Spacing, etc.)
- Each token includes value, type, parent, and description

## API Endpoint

For external access, use the GitHub API:
```
https://api.github.com/repos/{username}/{reponame}/dispatches
```

Replace `{username}` with your GitHub username and `{reponame}` with this repository name.

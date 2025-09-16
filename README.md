# Design Tokens

This repository contains design tokens for the project, automatically processed with Style Dictionary.

## Files

- `tokens.json` - Main design tokens file (flat JSON, automatically generated)
- `tokens-nested.json` - Nested JSON format for better structure
- `tokens-css.json` - CSS custom properties format
- `dispatches/tokens.json` - Source tokens file (updated by plugin)
- `dist/` - Build output directory with all transformed formats

## Formats

- **JSON Flat**: Flattened structure for easy consumption
- **JSON Nested**: Hierarchical structure for better organization
- **CSS Variables**: Ready-to-use CSS custom properties
- **Source Format**: Original plugin format for editing

## Usage

The tokens are automatically processed with Style Dictionary and made available in multiple formats.
The plugin updates `dispatches/tokens.json` and this workflow transforms them using Style Dictionary.

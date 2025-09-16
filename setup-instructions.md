# Setup Instructions for Design Tokens Repository

## ✅ What's Been Fixed

1. **Created `.github/workflows/design-tokens.yml`** - GitHub Actions workflow
2. **Added `tokens.json` to root directory** - Tokens are now visible
3. **Created `README.md`** - Repository documentation
4. **Set up automatic token processing** - Tokens will be updated on every push

## 🔧 Next Steps to Complete Setup

### 1. Enable GitHub Actions
- Go to your repository on GitHub
- Click on the "Actions" tab
- If prompted, click "I understand my workflows, go ahead and enable them"

### 2. Verify Repository Settings
- Go to Settings → Actions → General
- Make sure "Allow all actions and reusable workflows" is selected
- Ensure "Allow GitHub Actions to create and approve pull requests" is enabled

### 3. Test the Workflow
- Make a small change to any file
- Commit and push to the main branch
- Check the Actions tab to see if the workflow runs successfully

### 4. Verify Token Visibility
- After the workflow runs, you should see `tokens.json` in the root directory
- The file should be visible in the GitHub web interface

## 🔗 API Endpoint Configuration

For external tools to access your tokens, use this URL format:
```
https://api.github.com/repos/{username}/{reponame}/dispatches
```

**Replace:**
- `{username}` with your GitHub username (e.g., `abhishekbabladi`)
- `{reponame}` with your repository name (e.g., `umain-test-tokens`)

**Example:**
```
https://api.github.com/repos/abhishekbabladi/umain-test-tokens/dispatches
```

## 🚀 How It Works

1. **On Push**: When you push changes to the main branch, the workflow automatically:
   - Copies `dispatches/tokens.json` to the root as `tokens.json`
   - Updates the README if needed
   - Commits and pushes the changes

2. **Manual Trigger**: You can also manually trigger the workflow from the Actions tab

3. **Token Access**: External tools can now access your tokens via the GitHub API

## 🔍 Troubleshooting

If the workflow fails:
1. Check the Actions tab for error messages
2. Ensure you have push permissions to the repository
3. Verify that GitHub Actions are enabled
4. Check that the `GITHUB_TOKEN` has the necessary permissions

## 📁 File Structure

```
umain-test-tokens/
├── .github/
│   └── workflows/
│       └── design-tokens.yml
├── dispatches/
│   └── tokens.json
├── tokens.json          # ← This is now visible!
├── README.md
└── setup-instructions.md
```

Your design tokens should now be visible in the GitHub repository! 🎉

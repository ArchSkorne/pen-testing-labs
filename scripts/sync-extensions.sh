#!/bin/bash

# Manual script to sync VS Code extensions configuration
# Run this anytime you want to manually update the extensions list

echo "🔧 Manually updating VS Code extensions configuration..."

SCRIPT_DIR="$(dirname "$0")"
cd "$SCRIPT_DIR/.."

# Run the update script
./scripts/update-extensions.sh

echo ""
echo "📋 Current extensions summary:"
echo "$(code --list-extensions | wc -l) extensions installed"

echo ""
echo "📁 Files updated:"
echo "   - .vscode/extensions.json (VS Code workspace recommendations)"
echo "   - vscode-extensions.md (Human-readable documentation)"

echo ""
echo "💡 Next steps:"
echo "   - Review the changes with: git diff"
echo "   - Commit the changes: git commit -m 'Update VS Code extensions'"
echo "   - Push to GitHub: git push"
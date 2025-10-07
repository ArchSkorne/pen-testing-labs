#!/bin/bash

# Script to update VS Code extensions configuration files
# This runs automatically before each commit via Git pre-commit hook

WORKSPACE_ROOT="$(git rev-parse --show-toplevel)"
EXTENSIONS_JSON="$WORKSPACE_ROOT/.vscode/extensions.json"
EXTENSIONS_MD="$WORKSPACE_ROOT/vscode-extensions.md"

echo "Updating VS Code extensions configuration..."

# Get current extensions with versions
EXTENSIONS=$(code --list-extensions --show-versions 2>/dev/null | sort)

if [ -z "$EXTENSIONS" ]; then
    echo "Warning: No VS Code extensions found or VS Code not available"
    exit 0
fi

# Update .vscode/extensions.json
mkdir -p "$WORKSPACE_ROOT/.vscode"

# Create JSON array of extension IDs (without versions)
EXTENSION_IDS=$(echo "$EXTENSIONS" | sed 's/@.*//' | sed 's/^/    "/' | sed 's/$/"/' | paste -sd,)

cat > "$EXTENSIONS_JSON" << EOF
{
  "recommendations": [
$EXTENSION_IDS
  ],
  "unwantedRecommendations": []
}
EOF

# Update vscode-extensions.md
CURRENT_DATE=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

cat > "$EXTENSIONS_MD" << 'EOF'
# VS Code Extensions Configuration

This file tracks the installed VS Code extensions for this workspace. It's automatically updated on each commit.

**Last Updated:** PLACEHOLDER_DATE

## Installed Extensions

| Extension ID | Version | Description |
|--------------|---------|-------------|
EOF

# Add extension table rows
echo "$EXTENSIONS" | while IFS='@' read -r ext_id ext_version; do
    # Get extension display name (simplified approach)
    display_name=$(echo "$ext_id" | sed 's/.*\.//' | sed 's/-/ /g' | sed 's/\b\w/\u&/g')
    echo "| $ext_id | $ext_version | $display_name |" >> "$EXTENSIONS_MD"
done

cat >> "$EXTENSIONS_MD" << 'EOF'

## Installation Commands

To install all these extensions on a new VS Code instance:

```bash
# Install all recommended extensions
EOF

echo "$EXTENSIONS" | while IFS='@' read -r ext_id ext_version; do
    echo "code --install-extension $ext_id@$ext_version" >> "$EXTENSIONS_MD"
done

cat >> "$EXTENSIONS_MD" << 'EOF'
```

Or install from the extensions.json file:
```bash
# Navigate to workspace root and install from recommendations
code --install-extension $(cat .vscode/extensions.json | jq -r '.recommendations[]')
```

## Usage Notes

- The `.vscode/extensions.json` file enables VS Code to recommend these extensions when opening this workspace
- This markdown file provides a human-readable list with versions and installation commands
- Both files are automatically updated before each commit via Git hooks
EOF

# Replace date placeholder
sed -i "s/PLACEHOLDER_DATE/$CURRENT_DATE/" "$EXTENSIONS_MD"

echo "✅ Extensions configuration updated:"
echo "   - $EXTENSIONS_JSON"
echo "   - $EXTENSIONS_MD"

# Add files to git if they've changed
if [ -f "$EXTENSIONS_JSON" ]; then
    git add "$EXTENSIONS_JSON"
fi

if [ -f "$EXTENSIONS_MD" ]; then
    git add "$EXTENSIONS_MD"
fi

echo "✅ Files staged for commit"
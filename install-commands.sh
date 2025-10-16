#!/bin/bash
# install-commands.sh - Install Cursor commands in the user's home directory

set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Installing Cursor commands...${NC}"

# Save the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set target directory in user's home
TARGET_DIR="$HOME/.cursor/commands"

# Create commands directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Check if commands already exist
if [ -d "$TARGET_DIR" ] && [ "$(ls -A "$TARGET_DIR" 2>/dev/null)" ]; then
    echo -e "${YELLOW}⚠️  Cursor commands already exist in $TARGET_DIR${NC}"
    read -p "Do you want to overwrite them? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${BLUE}ℹ️  Installation cancelled.${NC}"
        exit 0
    fi
fi

# Copy commands from this repository
if [ -d "$SCRIPT_DIR" ]; then
    echo -e "${GREEN}📋 Copying Cursor commands from $SCRIPT_DIR...${NC}"
    # Check if .md files exist in the script directory
    if ls "$SCRIPT_DIR"/*.md 1> /dev/null 2>&1; then
        # Exclude README.md from being copied
        for file in "$SCRIPT_DIR"/*.md; do
            if [ "$(basename "$file")" != "README.md" ]; then
                cp "$file" "$TARGET_DIR/"
            fi
        done
        echo -e "${GREEN}✅ Cursor commands installed successfully!${NC}"
    else
        echo -e "${RED}❌ No command files (.md) found in: $SCRIPT_DIR${NC}"
        exit 1
    fi
else
    echo -e "${RED}❌ Commands source directory not found: $SCRIPT_DIR${NC}"
    exit 1
fi

echo -e "${GREEN}🎉 Cursor commands installation complete!${NC}"
echo -e "${BLUE}ℹ️  Commands are now available in your Cursor environment.${NC}"
echo -e "${BLUE}ℹ️  Commands location: $TARGET_DIR${NC}"

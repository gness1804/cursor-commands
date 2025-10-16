# Cursor Commands

This repository contains a collection of Cursor command files that can be installed into Cursor's commands directory (`~/.cursor/commands`) for easy access and management.

## Overview

This directory contains Cursor command files (`.md` files) that provide various utilities and shortcuts for development workflows. These commands are designed to be installed into Cursor's commands directory for easy access.

## Quick Setup

### 🚀 Easy Installation (Recommended)
```bash
# Clone the commands repository
git clone https://github.com/gness1804/cursor-commands.git cursor-commands

# Install the commands
cd cursor-commands
./install-commands.sh
```

The installation script will:
- ✅ Automatically detect your workspace root
- ✅ Create the `~/.cursor/commands/` directory
- ✅ Copy all command files (`.md` files)
- ✅ Handle existing commands (with confirmation)

### Alternative Setup Methods

#### Option 1: Manual Clone
```bash
# Navigate to your workspace root
cd /path/to/your/workspace/root
git clone https://github.com/gness1804/cursor-commands.git .cursor/commands
```

#### Option 2: Copy Commands Directory
```bash
# Navigate to your workspace root
cd /path/to/your/workspace/root
# Copy from existing workspace
cp -r /path/to/existing/workspace/.cursor/commands .cursor/
```

## Available Commands

The repository includes various Cursor command files:

- **create-commit-message.md**: Generate conventional commit messages
- **enforce-pep8.md**: Enforce PEP 8 standards for Python code
- *More commands can be added as needed*

## Updating Commands

When you make changes to the commands:

```bash
# In the cursor-commands repository
git add .
git commit -m "Update Cursor commands"
git push

# In any workspace using these commands
cd cursor-commands
git pull
./install-commands.sh
```

## Maintenance

- Keep commands updated as workflows evolve
- Test commands in new workspaces before committing
- Document any workspace-specific customizations
- Use semantic versioning for major command changes

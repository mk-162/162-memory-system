#!/bin/bash

echo "Setting up 162 Memory System..."

# Install Obsidian skills
echo "Installing Obsidian skills from kepano/obsidian-skills..."
npx skills add https://github.com/kepano/obsidian-skills --yes --global

echo ""
echo "Setup complete."
echo "Next steps:"
echo "1. Open the 'vault/' folder in Obsidian"
echo "2. Use the agent prompt from README.md in your Hermes/Claude setup"
echo "3. Start using Phoebe: mode for deterministic answers"

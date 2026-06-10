# Playbook Memory Template

A clean, professional template for persistent AI agent memory using Obsidian + structured notes.

This gives you the same memory layer used for project tracking, decision history, and deterministic answers (Phoebe mode).

## Quick Start

```bash
git clone https://github.com/YOUR-USERNAME/playbook-memory-template.git
cd playbook-memory-template

# Install the required Obsidian skills
npx skills add https://github.com/kepano/obsidian-skills --yes --global
```

Then open the `vault/` folder in Obsidian.

## How to Use "Phoebe" Mode

Prefix any question with `Phoebe:` or `phi:` to get answers strictly from the notes in this vault.

## Folder Structure

```
vault/
├── meta/           # Instructions, indexes, and vault rules
├── context/        # Immutable facts (brand, principles, company)
├── projects/       # One note per active project
├── workflows/      # SOPs and repeatable processes
├── templates/      # Reusable note templates
└── tools/          # Skill documentation and setup guides
```

## Philosophy

- Version-controlled memory over scattered chats
- Structured Markdown over ad-hoc notes
- Explicit examples over vague instructions
- Obsidian skills for consistent formatting

MIT License — fork and adapt freely.
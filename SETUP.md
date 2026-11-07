# Setup Guide

Read [AGENT-INSTRUCTIONS.md](AGENT-INSTRUCTIONS.md) first. For an existing client Brain, connect to its repository and keep its folder structure. The steps below create a new local template; cloud agents can use an authorised GitHub connection without installing Obsidian.

## 1. Clone the repository

```bash
git clone https://github.com/mk-162/162-memory-system.git
cd 162-memory-system
```

## 2. Install the Obsidian skills

```bash
npx skills add https://github.com/kepano/obsidian-skills --yes --global
```

## 3. Open the vault

Open the `vault/` folder directly in Obsidian.

## 4. Start using Phoebe mode

When you want answers based only on the notes in this vault, prefix your message with:

- `Phoebe:`
- or `phi:`

## Customisation

- Replace or delete the example files in `context/` and `projects/`
- Add your real projects using the same frontmatter format
- Keep the `meta/` and `tools/` folders as reference

This template gives you a durable, searchable, version-controlled memory layer for any project work.

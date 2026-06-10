# Playbook Memory System – Setup Guide

This guide shows you how to set up the same persistent memory layer I use for all projects. It gives AI agents reliable, version-controlled access to context, decisions, and processes.

## Why This Exists

Most AI work scatters context across chats. This system keeps everything in one structured, searchable, git-versioned vault so agents can answer accurately using real documentation instead of guessing.

## What You Get

- A clean Obsidian vault for project memory
- Structured notes with frontmatter (status, tags, dates)
- Phoebe mode: prefix questions with `Phoebe:` or `phi:` to get answers strictly from your notes
- Consistent formatting using dedicated Obsidian skills

## Step-by-Step Setup

### 1. Clone the template

```bash
git clone https://github.com/mk-162/162-memory-system.git
cd 162-memory-system
```

### 2. Install the Obsidian skills

Run this command:

```bash
npx skills add https://github.com/kepano/obsidian-skills --yes --global
```

This installs the required skills:
- `obsidian-markdown`
- `obsidian-bases`
- `obsidian-cli`
- `json-canvas`

### 3. Open the vault in Obsidian

Open the `vault/` folder as a vault in Obsidian. This is where all your memory lives.

### 4. Start using it

- Create one note per project in `vault/projects/`
- Keep brand, principles, and company facts in `vault/context/`
- Document repeatable processes in `vault/workflows/`

## Using Phoebe Mode

When you want the agent to answer using only the documented notes in this vault, start your message with:

- `Phoebe:`
- or `phi:`

Example:
```
Phoebe: What is the current status of the tracking platform project?
```

## Recommended Folder Structure

```
vault/
├── meta/           # Rules and instructions for the vault
├── context/        # Immutable facts (brand voice, principles, company info)
├── projects/       # One note per active project
├── workflows/      # SOPs and repeatable processes
└── tools/          # Skill documentation
```

## Best Practices

- Always use the Obsidian skills when editing notes
- Keep one project per note in `projects/`
- Update project notes as decisions are made
- Use frontmatter for status, priority, and tags
- Trigger Phoebe mode when you need grounded answers

## Next Steps

1. Replace the example files with your real projects and context
2. Keep the `meta/` and `tools/` folders as reference
3. Commit changes regularly — this is your version-controlled memory

This setup gives you a durable, searchable memory layer that works reliably with AI agents.
# Playbook Memory System – Setup Guide

This guide shows you how to set up the same persistent memory layer used for all projects. It combines three layers that work together to give AI agents reliable, long-term memory.

## The Three Layers of Memory

### 1. Hermes Native Memory (Short-term)
Hermes has its own built-in memory for the current session. This is useful for immediate context within one conversation but is temporary and not version-controlled.

### 2. Obsidian Vault (Long-term Memory)
The `vault/` folder is your **long-term structured memory**. It lives in git and is written in Obsidian Flavored Markdown. This is where all project history, decisions, status, and context live permanently.

### 3. Playbook (The Filing Cabinet)
The Playbook acts as the **curated filing cabinet**. It contains the structured knowledge, SOPs, brand guidelines, and workflows that the agent should treat as authoritative. The Obsidian vault feeds into this system.

**Analogy**:
- Hermes memory = your short-term working memory
- Obsidian vault = your long-term memory and notebooks
- Playbook = the organised filing cabinet you actually trust and reference

## Why a Deterministic Source Matters

Most AI systems rely on whatever is in the current chat or model training data. This leads to:

- Inconsistent answers
- Hallucinated facts
- Lost decisions from previous conversations
- No audit trail

A deterministic source (your Obsidian vault + Playbook) gives you:

- **Consistency** — The same question produces the same answer
- **Traceability** — You can see exactly which note the answer came from
- **Version history** — Git shows when decisions were made and by whom
- **No hallucination on facts** — The agent is instructed to only use documented information when Phoebe mode is active
- **Cumulative knowledge** — Every project adds to the system instead of disappearing after the chat ends

## How This Fits With Hermes

Hermes can use multiple memory systems at once:

- It uses its native memory for the current task
- It uses the Obsidian skills (`obsidian-markdown`, `obsidian-bases`, etc.) when reading or writing notes
- When you trigger **Phoebe mode** (`Phoebe:` or `phi:`), Hermes switches to deterministic mode and only answers from the vault

This means you get the best of both worlds:
- Fast, flexible responses from Hermes
- Reliable, documented answers from your long-term memory when needed

## Step-by-Step Setup

### 1. Clone the repo

```bash
git clone https://github.com/mk-162/162-memory-system.git
cd 162-memory-system
```

### 2. Install the Obsidian skills

```bash
npx skills add https://github.com/kepano/obsidian-skills --yes --global
```

This installs:
- `obsidian-markdown`
- `obsidian-bases`
- `obsidian-cli`
- `json-canvas`

### 3. Open the vault

Open the `vault/` folder in Obsidian. This becomes your long-term memory vault.

### 4. Start using Phoebe mode

When you want answers based only on your documented notes, prefix your question with:

- `Phoebe:`
- or `phi:`

Example:
```
Phoebe: What is the current status of the tracking platform project and what was the last decision made?
```

## Recommended Folder Structure

```
vault/
├── meta/           # Rules and instructions
├── context/        # Brand, principles, company facts
├── projects/       # One note per active project
├── workflows/      # SOPs and repeatable processes
└── tools/          # Skill documentation
```

## Best Practices

- Always use the Obsidian skills when editing notes
- Keep one project per note in `projects/`
- Update notes as decisions are made
- Use frontmatter (`status`, `priority`, `tags`)
- Trigger Phoebe mode when you need grounded, deterministic answers
- Commit regularly — this is your version-controlled memory

This system gives you a durable, searchable, and reliable memory layer that works alongside Hermes native capabilities.
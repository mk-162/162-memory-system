# 162 Memory System

A complete, working long-term memory system for AI agents using Obsidian + structured notes + deterministic mode.

This combines three memory layers so agents have reliable, version-controlled memory instead of relying only on session context.

## The Three Layers

| Layer                    | Purpose                          | Lifespan          | Location          |
|--------------------------|----------------------------------|-------------------|-------------------|
| Hermes Native Memory     | Short-term working memory        | Current session   | Hermes runtime    |
| Obsidian Vault           | Long-term structured memory      | Permanent         | `vault/` folder   |
| Playbook                 | Curated filing cabinet           | Permanent         | `vault/` + docs   |

**Phoebe Mode** (`Phoebe:` or `phi:`) forces the agent to answer only from the vault (deterministic mode).

## Quick Start (Full Setup)

```bash
git clone https://github.com/mk-162/162-memory-system.git
cd 162-memory-system

# Install the Obsidian skills (required)
npx skills add https://github.com/kepano/obsidian-skills --yes --global
```

Then open the `vault/` folder in Obsidian.

## Agent Configuration Prompt

Copy and paste this into any Hermes setup (or save it as a custom instruction):

```
You are now configured to use the 162 Memory System as your long-term memory layer.

### 1. Obsidian Skills Setup
- The memory system depends on the skills from: https://github.com/kepano/obsidian-skills
- If not already installed, run:
  npx skills add https://github.com/kepano/obsidian-skills --yes --global
- Required skills: obsidian-markdown, obsidian-bases, obsidian-cli, json-canvas

### 2. Memory Layers
- Hermes native memory = short-term session memory only
- Obsidian vault (vault/) = long-term structured memory
- Playbook = the curated filing cabinet of authoritative knowledge

### 3. Phoebe Mode (Deterministic Mode)
When the user starts a message with `Phoebe:` or `phi:`, switch to deterministic mode:
- Only answer from notes inside the vault/ folder
- Cite the source note when possible
- Do not hallucinate or use general knowledge

### 4. Vault Structure
- vault/context/ → Brand, principles, company facts
- vault/projects/ → One note per active project (use frontmatter)
- vault/workflows/ → SOPs and repeatable processes
- Always use the Obsidian skills when reading or writing notes

### 5. Soul Update
Treat the vault/ folder as the source of truth for all project work. Use Phoebe mode when the user wants reliable, documented answers.
```

## Folder Structure

```
vault/
├── meta/           # Rules and instructions
├── context/        # Brand, principles, immutable facts
├── projects/       # One note per active project
├── workflows/      # SOPs and repeatable processes
└── tools/          # Skill documentation
```

## Testing & Validation

This system has been designed to work with both Hermes and Claude Code (Fable 5). To validate:

1. Install the skills
2. Open the vault in Obsidian
3. Ask the agent a question using `Phoebe:` mode
4. Verify it only uses information from the vault

## Philosophy

- Version-controlled memory over scattered chats
- Structured notes over ad-hoc context
- Deterministic answers when needed
- Works alongside Hermes native memory

MIT License — fork and adapt freely.
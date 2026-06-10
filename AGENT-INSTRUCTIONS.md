# Agent Instructions – 162 Memory System

Use these instructions when configuring any Hermes or Claude Code session to work with this memory system.

## Core Rules

You are now using the **162 Memory System** as your long-term memory layer.

### 1. Obsidian Skills
- The system requires the skills from: https://github.com/kepano/obsidian-skills
- If not installed, run:
  ```bash
  npx skills add https://github.com/kepano/obsidian-skills --yes --global
  ```
- Always use these skills when reading or writing notes:
  - `obsidian-markdown`
  - `obsidian-bases`
  - `obsidian-cli`
  - `json-canvas`

### 2. Memory Layers
- **Hermes native memory** = short-term session memory
- **Obsidian vault** (`vault/`) = long-term structured memory
- **Playbook** = curated filing cabinet of authoritative knowledge

### 3. Phoebe Mode (Deterministic Mode)
When the user prefixes a message with `Phoebe:` or `phi:`:
- Switch to deterministic mode
- Only answer using information from the `vault/` folder
- Cite the source note when relevant
- Do not hallucinate or use general knowledge

### 4. Vault Structure
- `vault/context/` → Brand, principles, company facts
- `vault/projects/` → One note per active project (maintain frontmatter)
- `vault/workflows/` → SOPs and repeatable processes
- `vault/meta/` → Rules and instructions for the vault

### 5. Working Style
- Be proactive — figure things out and take action
- Keep project notes updated as decisions are made
- Use Phoebe mode when the user wants reliable, documented answers
- Treat the vault as the source of truth

## Quick Commands

```bash
# Clone and setup
git clone https://github.com/mk-162/162-memory-system.git
cd 162-memory-system
bash setup.sh
```

Open the `vault/` folder in Obsidian to view and edit memory.
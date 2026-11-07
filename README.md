# 162 Memory System

Persistent organisational memory, kept as structured, linked notes that an agent reads and maintains during the team's work.

People ask questions, bring research and make decisions. The agent updates the relevant notes, keeps related pages consistent and saves the changes.

## Start here, agents

Read [AGENT-INSTRUCTIONS.md](AGENT-INSTRUCTIONS.md) at the start of every session, then the connected client's README, agent instructions and schema. [AGENTS.md](AGENTS.md) provides the same entry point for tools that load that filename.

The shared instructions cover:

- Reading existing knowledge before answering or adding a page.
- Reconciling new research, contradictions, duplicates and superseded material.
- Saving authorised edits directly to `main`, with checks and protection for other people's changes.
- Talking to clients about content and decisions in plain English.
- Explaining the usual three-minute Quartz publishing delay separately from a successful save.

A repository file cannot create a connection or guarantee an agent loads its instructions. Configure the agent to read these entry points and give its connector the access required for the task.

## Connect an existing client Brain

Use the client's existing repository as the source of truth. Keep its folder structure: some use `brain/`, while this template uses `vault/`.

For a direct GitHub connection, each person uses their own GitHub account with access to that Brain. Verify that their chosen agent connection supports writing as well as reading. The connector determines the recorded save identity.

A service such as Forge can provide its own authenticated connector instead. That requires an implemented integration and a record of which person requested each change; this template does not supply that service.

Website publishing is a separate configuration. Check that the host accepts updates from the intended editors. Do not assume access to the Brain guarantees a successful website build.

A starting instruction for an agent is:

> Open our connected Brain, read its README and agent instructions, then follow the 162 Memory System workflow. Read before answering, maintain the relevant notes as we work, save requested edits, and tell me what changed in plain English.

## Set up a new local vault

```bash
git clone https://github.com/mk-162/162-memory-system.git
cd 162-memory-system
npx skills add https://github.com/kepano/obsidian-skills
```

Open `vault/` in Obsidian if you want a local viewer. A cloud agent can work through an authorised GitHub connection without the Obsidian desktop application. The [CLI](https://help.obsidian.md/cli) is available when using a running local Obsidian instance.

| Folder | Purpose |
| --- | --- |
| `vault/meta/` | Rules and instructions |
| `vault/context/` | Brand, principles and company facts |
| `vault/projects/` | Project context, decisions and current status |
| `vault/workflows/` | SOPs and repeatable processes |
| `vault/tools/` | Tool and skill documentation |

Keep raw source material in the location chosen for the client and link to it from the maintained notes. Runtime chat context supplements the repository; it does not replace the organisation's durable record.

## Ask from documented knowledge

Prefix a question with `Phoebe:` or `phi:` to request an answer based only on the Brain. The agent must cite notes and identify missing information. This restriction improves traceability; it does not promise identical answers or error-free output.

## References

- [Shared agent instructions](AGENT-INSTRUCTIONS.md)
- [Setup guide](SETUP.md)
- [Shareable guide](SHAREABLE-GUIDE.md)
- [Obsidian skills](https://github.com/kepano/obsidian-skills)
- [Andrej Karpathy's LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)

MIT License.

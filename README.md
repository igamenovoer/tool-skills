# Tool Skills

Standalone distribution repository for agent skills owned by IGameNovoer tools.

## Tools

- `houmao/` - Houmao system skills mirrored from `igamenovoer/houmao`
- `misc/llm-wiki-all-in-one/` - Standalone LLM Wiki all-in-one skill

Install Houmao skills with:

```bash
npx skills add igamenovoer/tool-skills/houmao
```

Install the LLM Wiki all-in-one skill with:

```bash
npx skills add igamenovoer/tool-skills/misc/llm-wiki-all-in-one
```

## Sync

Refresh the Houmao skill namespace from a local Houmao checkout:

```bash
scripts/sync-houmao.sh ../houmao
```

GitHub Actions also syncs the `houmao/` namespace from `igamenovoer/houmao` when dispatched by Houmao releases or manually from this repository.

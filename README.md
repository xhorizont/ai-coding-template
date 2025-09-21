# Project Template — AI-First, Multi-Assistant

This repository is a **drop-in starter** for any project that wants to use AI assistants (Claude, OpenAI / ChatGPT, Gemini, Local models) in a consistent, safe and reproducible way. It ships with:
- Shared documentation (`/docs`) to give assistants and humans a single source of truth
- Per-assistant configuration and prompts (`/ai/assistants/*`)
- Reusable prompts, playbooks, tools and evals (`/ai/*`)
- Example CI automations for headless assistant tasks (`/.github/workflows`)
- Minimal dev tooling (`/scripts`, `/docker`) and language-agnostic defaults

> You can safely delete language sections you don't need (e.g., `pyproject.toml`, `package.json`) after scaffolding.

## Quick Start

1. **Clone the template**  
   ```bash
   git clone <your-fork-url> my-project
   cd my-project
   ```

2. **Set environment variables**  
   Copy `.env.example` to `.env` and fill secrets:
   ```bash
   cp .env.example .env
   ```

3. **Pick your language/tooling**  
   - **Node/TypeScript**: edit `package.json`, run `npm i` (or `pnpm i`), then `npm run dev`
   - **Python**: edit `pyproject.toml`, create venv and run `pip install -e .[dev]`

4. **Wire up assistants**  
   - Update **`ai/CLAUDE.md`** (repo hints) and **`.claude/settings.json`**
   - Adjust **`ai/assistants/*/model.config.json`** and `system.md`
   - If using MCP, edit **`.mcp.json`**

5. **Run the basic sanity checks**  
   ```bash
   ./ai/tools/format.sh
   ./ai/tools/typecheck.sh
   ./ai/tools/run-tests.sh
   ```

6. **Enable CI**  
   In GitHub, ensure Actions are enabled. The preconfigured workflows will run tests and (optionally) headless assistant triage.

## Repository Layout

- `docs/` — Project and technical documentation intended for humans *and* AI
- `ai/` — Assistant configurations, prompts, tools, evals and policies
- `.claude/` — Claude Code settings and project slash-commands
- `.mcp.json` — Model Context Protocol servers/clients shared across the repo
- `.github/workflows/` — CI pipelines with examples for AI-assisted tasks
- `docker/` — Optional local dev container and services
- `scripts/` — Human-oriented scripts (bootstrap, pre-commit hooks, repo map)

## Using This Template with AI Assistants

- **Claude Code** automatically loads `ai/CLAUDE.md`, `docs/*` and repo maps to build context.
- **Slash commands** in `.claude/commands` and `ai/assistants/claude/commands` let you run repeatable workflows (e.g., `/project:review-pr`).
- **Headless automations** (see `ai/assistants/claude/headless/` and `.github/workflows/`) can triage issues or perform subjective linting on PRs.
- **LLM-agnostic prompts** in `ai/PROMPTS` unify behavior across providers.

## Conventions

- **Docs are canonical**. If code contradicts `docs/`, open an issue.
- **Small PRs, with tests**. Every change should include tests when possible.
- **Security-first**. Never commit secrets; follow `docs/06-security-and-privacy.md`.
- **Conventional Commits** and trunk-based branching are encouraged.

## Cleanup Checklist (after cloning)

- [ ] Rename project in `README.md`, `package.json`, `pyproject.toml`
- [ ] Decide on language/tooling and remove unused manifests
- [ ] Set CI secrets and environment variables
- [ ] Update `docs/00-project-spec.md` with your scope and KPIs
- [ ] Review `ai/policies/*` to match your organization's rules

# Repo Context for Claude

Claude, please use this document as primary guidance for repository-specific behavior.

## Commands
- Build: `npm run build`
- Tests: `./ai/tools/run-tests.sh`
- Typecheck: `./ai/tools/typecheck.sh`
- Format: `./ai/tools/format.sh`

## Code Style
- TypeScript (ESM) and/or Python
- Strict typing; prefer small, focused modules
- Conventional Commits

## Workflow
- Always read `docs/01-technical-spec.md` before code changes
- Create small PRs with tests
- Keep `docs/` in sync with code changes

## Warnings
- Never commit secrets
- Changes to `docs/` must be reflected in `CHANGELOG.md` (if present)

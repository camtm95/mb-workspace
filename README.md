# MB Workspace

One-command installer for MB Workspace, optimized for designer + developer collaboration with an AI-first workflow.

## Quick install

### WSL / Linux / macOS

```bash
npx mb-workspace
```

### Windows PowerShell

```powershell
npx mb-workspace
```

After install:

```bash
mb-ui
```

## Publish checklist

1. Replace every `<YOUR_USER>` and `<YOUR_REPO>` placeholder in:
   - `install.sh`
   - `install.ps1`
   - `bin/mb-workspace.js`
2. Push this repo to GitHub as a public repository.
3. Login to npm:

```bash
npm login
```

4. Publish:

```bash
npm publish
```

If the package name `mb-workspace` is already taken, change the `name` field in `package.json` and publish with a scoped name like `@yourname/mb-workspace`.

## What the installer does

- Clones or updates the MB Workspace repo into `~/.mb-workspace`
- Adds `mb-tools` to PATH
- Sets `MB_WORKSPACE_HOME`
- Creates `projects/` and `.projects/`

## Main commands

- `mb-ui` — open project and task menu
- `mb` — basic project launcher
- `mb-start` — show branch and working tree state
- `mb-task <name>` — create or switch task branch
- `mb-save "message"` — commit and push current work
- `mb-submit` — push current branch and mark it submitted
- `mb-list` — list task branches and submitted state
- `mb-home` — jump back to workspace home

# Dev Container Features: Tools

[![Release](https://img.shields.io/github/v/release/devcontainers-features/tools)](https://github.com/devcontainers-features/tools/releases/latest)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A collection of [dev container Features](https://containers.dev/implementors/features/) for developer tools, published to GitHub Container Registry.

## Features

### `atlas`

Installs the [Atlas CLI](https://atlasgo.io) for managing database schemas as code.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/devcontainers-features/tools/atlas:1": {}
    }
}
```

#### Options

| Option | Type | Default | Description |
|---|---|---|---|
| `version` | string | `latest` | Select the version to install |

---

### `psql`

Installs [psql](https://www.postgresql.org/docs/current/app-psql.html), the PostgreSQL interactive terminal.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/devcontainers-features/tools/psql:1": {}
    }
}
```

---

### `gum`

Installs [Gum](https://github.com/charmbracelet/gum) — a tool for glamorous shell scripts with interactive TUI components.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/devcontainers-features/tools/gum:1": {}
    }
}
```

#### Options

| Option | Type | Default | Description |
|---|---|---|---|
| `version` | string | `latest` | Select the version to install |

---

### `nvim`

Installs [Neovim](https://neovim.io) with fd, ripgrep, and language providers. Adds Mason's bin directory (`~/.local/share/nvim/mason/bin`) to `PATH` for all shell types.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/devcontainers-features/tools/nvim:1": {}
    }
}
```

#### Options

| Option | Type | Default | Description |
|---|---|---|---|
| `version` | string | `latest` | Select the version to install |

## Repository Structure

```
├── src
│   ├── atlas
│   │   ├── devcontainer-feature.json
│   │   └── install.sh
│   ├── psql
│   │   ├── devcontainer-feature.json
│   │   └── install.sh
│   ├── gum
│   │   ├── devcontainer-feature.json
│   │   └── install.sh
│   └── nvim
│       ├── devcontainer-feature.json
│       └── install.sh
```

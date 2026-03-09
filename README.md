# Dev Container Features: CLI

A collection of [dev container Features](https://containers.dev/implementors/features/) for CLI tools, published to GitHub Container Registry.

## Features

### `atlas`

Installs the [Atlas CLI](https://atlasgo.io) for managing database schemas as code.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/devcontainers-features/cli/atlas:1": {}
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
        "ghcr.io/devcontainers-features/cli/psql:1": {}
    }
}
```

---

### `starship`

Installs the [Starship](https://starship.rs) cross-shell prompt.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/devcontainers-features/cli/starship:1": {}
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
│   └── starship
│       ├── devcontainer-feature.json
│       ├── install.sh
│       └── scripts
│           └── profile.sh
```

## Related

- [`devcontainers-features/ai`](https://github.com/devcontainers-features/ai) — dev container features for AI coding tools
- [`devcontainers-features/tui`](https://github.com/devcontainers-features/tui) — dev container features for TUI tools

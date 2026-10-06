# Storytell

Jekyll site for the Storytell event pages. The site content lives in `docs/`, but
local builds are configured from the repo root so standard Jekyll commands work
without extra flags. `docs/_config.yml` retains the configuration for GitHub
Pages publishing from the `docs/` folder; the root `_config.yml` configures local
builds. Keep shared site settings in sync between the two files.

## Local setup

```bash
make setup
```

This installs gems into `vendor/bundle` inside the repo.

## Build

```bash
make build
```

Generated site output goes to `_site/`.

## Run locally

```bash
make serve
```

The development server runs at `http://127.0.0.1:4000`.

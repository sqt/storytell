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

## Site structure

- `/` shows the event selected by `next_event` in both configuration files.
- `/about/` contains the general explanation and audience FAQs.
- `/storytellers/` contains storyteller guidance.
- `/past-events/` lists events marked `status: past`, newest first.
- `/events/<theme>/` gives each event a permanent page.

Event files live in `docs/_events/`. Their filenames can remain theme-based;
sorting uses the ISO `event_date` (`YYYY-MM-DD`), and the displayed name uses
`title`. `event_id` is the stable identifier used to select the next event.
The shared event layout renders dates, times, and venues. Optional Markdown
below the front matter is reserved for details specific to that evening.
An optional `teaser` in the front matter introduces the theme on both the
event page and the homepage when that event is selected. The short storyteller
invitation lives on the homepage and is shared across upcoming events.
An optional `ticket_url` adds a free-seat reservation section to both pages.
An optional `venue_details` adds Markdown below the venue address for parking,
accessibility, entrances, or other arrival information. For example:

```yaml
venue_details: |-
  Add parking directions here once confirmed.

  Add any entrance or accessibility information here.
```

To add an event, copy an existing event file, give it a unique filename and
`event_id`, and update its title, date, times, and venue. Set `status: upcoming`
and set `next_event` to its `event_id` in both `_config.yml` files. Mark the
previous event `status: past` when it has happened. Past Events then updates
automatically without editing a separate list. Selection and status changes
are explicit rather than dependent on the time of a site rebuild.

The original files in `docs/_archive/` are retained as historical snapshots;
they are not published. Published past events now live in the events collection.
General text belongs on About Storytell, and the short homepage introduction
is in `docs/_includes/storytell-intro.html`.

After changing configuration, restart `make serve`. To check project-site
URLs locally, run `bundle exec jekyll build --baseurl /storytell`.

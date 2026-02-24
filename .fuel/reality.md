# Reality

## Architecture
Static documentation website for **Readalizer** (a PHP static analysis tool that enforces readability standards). No build toolchain, no bundler, no framework — plain HTML/CSS/JS served directly. Single-page doc site with sidebar navigation, rule catalog with search/filter, and client-side PHP/Bash syntax highlighting.

## Modules
| Module | Purpose | Entry Point |
|--------|---------|-------------|
| index.html | Single-page documentation (hero, sidebar nav, sections for install/CLI/config/rulesets/rules/architecture) | `index.html` |
| styles.css | All styling — CSS custom properties, responsive grid layout, code token theming | `styles.css` |
| app.js | Client-side interactivity — rule filtering, IntersectionObserver nav highlighting, PHP/Bash syntax highlighting | `app.js` |

## Entry Points
- `index.html` — the only page; loads `styles.css` and `app.js`
- No server-side components, no API, no build step

## Patterns
- **No build tools** — zero npm/node/bundler dependencies; hand-authored HTML, CSS, vanilla JS
- **CSS custom properties** — theming via `:root` variables (`--bg`, `--ink`, `--accent`, etc.)
- **Responsive** — CSS Grid layout collapses at 960px breakpoint
- **Client-side highlighting** — custom regex-based tokenizer in `app.js` for `language-php` and `language-bash` code blocks (no external highlight library)
- **Google Fonts** — Newsreader (serif body) + Space Grotesk (sans headings)
- **Search/filter** — `data-search` attributes on `.rule-card` elements, filtered via input event listener

## Quality Gates
| Tool | Command | Purpose |
|------|---------|---------|
| fuel qc | `fuel qc` | Pre-commit quality gate (runs via git pre-commit hook) |

No linters, formatters, type checkers, or test runners detected. The codebase has no `package.json`, no eslint/prettier/stylelint/biome config, no test framework.

## Recent Changes
_Last updated: 2026-02-24_

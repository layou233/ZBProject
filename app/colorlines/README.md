# Color Lines (五子连珠)

> Code by Claude Fable 5

A single-file web remake of the classic **Color Lines / WinLinez** puzzle game (originally © 1998 Ivan Golubev), built with plain HTML, CSS and vanilla JavaScript — no dependencies, no build step. Just open `index.html` in a browser.

## How to Play

- The board is a 9×9 grid with balls in 7 colors.
- Click a ball to select it (it bounces), then click an empty cell to move it. A ball can only move along a path of empty cells (4-directional); an unreachable cell shakes and refuses.
- Line up **5 or more** same-colored balls horizontally, vertically or diagonally to clear them and score points: `10 + 4 × (n − 5)` for *n* balls cleared.
- Clearing a line earns a free turn; otherwise **3 new balls** (shown in the "next" preview) drop onto random cells. Balls that happen to complete a line on arrival are cleared too.
- The game ends when the board fills up. Beat your high score!

Extras: one-step **undo**, synthesized **sound effects** (mutable), and automatic **save/resume** — close the tab and pick up where you left off.

## Implementation

Everything lives in [`index.html`](index.html): one `<style>` block, one `<script>` IIFE. Alongside it sit the icons (`icon.svg` for browser tabs, `icon-192.png`/`icon-512.png` for iOS home screens and the manifest) and a web app manifest (`manifest.json`) so the game can be installed as a standalone app when served over HTTP(S).

### Rendering (CSS-first)

- **Balls** are pure CSS: layered `radial-gradient`s (specular highlight + shaded sphere) tinted per color through a `--c` custom property and `color-mix()`. Crisp at any resolution, no images.
- **Board** is a CSS Grid sized with `min(94vw, 520px, calc(100dvh − 200px))` and `aspect-ratio: 1`, making the layout responsive down to phone screens.
- **Animations** are CSS keyframes (select bounce, spawn pop/land squash, clear vanish, invalid-move shake). Ball movement and the preview-to-board spawn flight use one-shot Web Animations API calls on floating elements, so the browser compositor does the work.
- **Dark/light mode** follows the system via `prefers-color-scheme` overriding a small set of CSS custom properties; `prefers-reduced-motion` disables animations.

### Game logic (vanilla JS, ~200 lines)

- State: `board` (a `Uint8Array` of 81 color indices, 0 = empty), `score`, `next` (preview queue), `sel`, plus a `busy` lock during animations.
- `findPath(a, b)` — BFS over empty cells for movement validation and the travel path; uses an `Int8Array` predecessor map and a head-pointer queue (no `shift()`), exiting as soon as the target is enqueued.
- `linesAt(i)` — scans 4 axes both ways from a cell to collect lines of 5+.
- `spawnBalls()` / `move()` — async functions chaining animations with the rules above.
- DOM work is minimal: 81 cell `div`s created once, re-rendered by toggling class names; a single delegated click handler covers mouse and touch.
- Persistence via `localStorage`: current game (board, score, next queue, undo snapshot), high score and mute setting. Boards are serialized to base64 with the native `Uint8Array.prototype.toBase64` / `Uint8Array.fromBase64` API, falling back to one-line `btoa`/`atob` shims via `??=` where unsupported.
- Sounds are short oscillator envelopes from the Web Audio API, generated on the fly.

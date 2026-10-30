# Claude Pixel Office

A warm, Anthropic-style office skin for [Pixel Agents](https://github.com/pixel-agents-hq/pixel-agents): every Claude Code session you run becomes a little orange mascot that walks to a desk, types while it works and raises a bubble when it needs you.

Fan-made. Not affiliated with or endorsed by Anthropic or the Pixel Agents team.

## What's inside
- `characters/` 6 mascot sprite sheets (drop-in replacement for the default people)
- `office-pack/` 14 furniture pieces: wall sign, Golden Gate windows, kanban board, LIVE dashboard, SHIP IT neon, server racks, arcade, mascot statue, lamps, beanbags, espresso, animated PCs
- `layout.json` the full office: 5 desks, lobby, lounge, kitchen
- `PROMPTS.md` the 5 prompts from the video (game, landing page, API, research, launch kit)

## Install (macOS / Linux, Node 18+)
```bash
npx pixel-agents        # run once, then Ctrl+C
git clone https://github.com/ilyagallager-bot/claude-pixel-office.git && cd claude-pixel-office
bash install.sh
npx pixel-agents        # open the link it prints
```
Then start Claude Code in a few terminals. Each session shows up in the office.

Your previous layout is saved as `~/.pixel-agents/layout.before-claude-office.json`.

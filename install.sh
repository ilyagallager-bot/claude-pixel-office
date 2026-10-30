#!/bin/bash
# Claude Pixel Office: Anthropic-style skin for Pixel Agents
# 1) run `npx pixel-agents` once and stop it (Ctrl+C), 2) run: bash install.sh, 3) run `npx pixel-agents` again
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
PKG=$(ls -dt ~/.npm/_npx/*/node_modules/pixel-agents 2>/dev/null | head -1)
if [ -z "$PKG" ]; then echo "Run 'npx pixel-agents' once first, then run this again."; exit 1; fi
CH=$(dirname "$(find "$PKG" -name char_0.png | head -1)")
cp "$DIR"/characters/char_*.png "$CH"/ && echo "mascots installed"
mkdir -p ~/.pixel-agents
[ -f ~/.pixel-agents/layout.json ] && cp ~/.pixel-agents/layout.json ~/.pixel-agents/layout.before-claude-office.json
cp "$DIR/layout.json" ~/.pixel-agents/layout.json && echo "office layout installed"
node -e '
const fs=require("fs"),p=require("os").homedir()+"/.pixel-agents/config.json";
let c={};try{c=JSON.parse(fs.readFileSync(p,"utf8"))}catch(e){}
const d=process.argv[1];c.externalAssetDirectories=[...new Set([...(c.externalAssetDirectories||[]),d])];
c.standalone=Object.assign({},c.standalone,{watchAllSessions:true,alwaysShowLabels:true});
fs.writeFileSync(p,JSON.stringify(c,null,2));console.log("furniture pack registered")' "$DIR/office-pack"
echo "Done. Start it with: npx pixel-agents"

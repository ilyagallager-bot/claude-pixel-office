# The 5 prompts

Open 5 terminal tabs, one folder each (game, landing, backend, research, launch), run `claude` in each and paste:

**1. Game dev**
We're shipping a browser game called Spark Run today. Before writing any code, ask me 3 short questions about what I want. Then build it as one file game.html: the player is a cute orange pixel robot (square body, two black eyes, little legs) dodging asteroids in space. Include: 3 levels with rising difficulty, power-ups (shield, slow-mo, magnet for sparks), a boss asteroid at the end of each level, particle explosions, screen shake, sound effects with the Web Audio API, a pause menu, touch controls for mobile, score and a game over screen. Check it runs without errors, then open it in the browser.

**2. Designer**
Build landing.html for a browser game called Spark Run: a little orange robot dodging asteroids in space. Sections: hero with an animated canvas starfield and a big title, an animated CSS preview of the robot dodging asteroids, 3 feature cards, a "how to play" section, a top 10 leaderboard section that fetches from http://127.0.0.1:8000/top and shows placeholder rows if the server is offline, an FAQ with 5 questions, and a footer. Fully responsive, dark space background with warm orange accents, a Play now button linking to ../game/game.html. Open it in the browser when done.

**3. Backend**
Write a leaderboard API for a browser game in leaderboard.py using only the Python standard library: POST /score, GET /top (top 10), GET /daily (a daily asteroid seed that is the same for everyone each day), input validation, a simple per-IP rate limit, and persistence to scores.json. Write at least 15 unittest tests covering every endpoint and edge case, and run them until they all pass. Then write a short API.md.

**4. Research**
Research why the most viral browser games of the last few years spread: Wordle, Suika Game, Vampire Survivors, Flappy Bird, 2048, Agar.io, GeoGuessr and Infinite Craft. Use web search and cite sources. Write research.md with a comparison table (core loop, session length, share mechanic, how it spread), 7 patterns that repeat, and 10 concrete ideas for our game Spark Run, ranked by impact.

**5. Launch**
Write a full launch kit for a browser game called Spark Run (an orange robot dodging asteroids) in launch.md: a 7 post X launch thread, 3 trailer scripts with shot lists, a Product Hunt listing (tagline, description, first comment), 10 short reply hooks, and a short pitch email for game newsletters. Then write press.md with a one page press kit.

Tip: press Enter in all 5 tabs within a few seconds, then watch the office.

# Bullet Hell Jam 2021

[My stuff](https://liberdade.itch.io/fueled-by-honey)
related to the
[#bullethelljam](https://itch.io/jam/bullet-jam-2021).

> 10 SECONDS

## Ideas

- 10 seconds of what? Cooldown? Special effects?
- What about a multiplayer game?
- What about a platformer instead of shoot'em ups?
- Should I make a "Honey the Cat" game? What about "Fueled by Hate"?

### Big Idea #1 - Fueled by Hate

"Fueled by Hate" is a bullet hell platformer.

You have access to a "star mode" where you become invencible to bullets and
have a chance to attack your enemies by hitting them (not shooting them).
This star mode lasts for 2 seconds and is only accessible every 10 seconds.

The goal depends on the task: you may need to kill every enemy, defeat one
particular enemy, or just survive as long as possible.

#### Notes about this idea

I can see the multiplayer idea flourishing here but it will probably be
too hard to implement right now.

### Big Idea #2

I don't have right now

## Notes

### Devlog

#### 2021-04-15

I will start developing the "Fueled by Hate" idea. I will use TIC80 right now
but I will probably need to check if I can spawn that many sprites on screen.

Should this be a platformer in the first place? I think I will try to nail the
idea first then I see if I should make this a platformer or not.

By the end of the day, I was able to make a character that walks around and take
bullets and another character that shoots bullets.

#### 2021-04-16

Stuff I would like to be done ASAP so I get started testing and iterating:

- [x] Draw HUD indicating how many lives and the cooldown for star power
- [x] Allow player to die from taking too many bullets
- [x] Allow player to use star power every 10 seconds for a given amount of time
- [x] Allow player to kill enemies by using star power

I should also change the bullets speed from a number to a function. This way,
I can change their trajectory over time.

#### 2021-04-17

Today I would like to turn that into an actual game that I can
improve over time. This means:

- [x] Implement splash screen
- [x] Implement tutorial
- [x] Implement level counter screen
- [x] Allow players to start next level
- [x] Implement credits screen

I decided to include the tutorial on the splash screen. The idea
is to make this a pretty serious game and I think this is going
to be a good part of the aesthetics of the game.

Now, I would like to make the game fun! That's what it should be
about, right?

- [x] Create interesting patterns with bullets
- [x] Allow enemies to move around

Regarding creating bullet patterns: don't forget yesterday's
suggestions!

#### 2021-04-19

Today is Monday, so you all know what it means: let's get back to work. Today
I would like to make the game longer and more presentable.

- [x] Include more levels
- [x] Improve animations
- [x] Improve backgrounds
- [x] Improve tutorial text to mention how to move

One way of improving animations is to change the theme of the game a little
bit. The first thing that came to mind was to convert this to another
[Honey the Cat](https://tic80.com/play?cart=1734) game. Hate mode would mean
Honey is ready to attack her enemies. Talking about enemies, they could be rats
throwing something at her. For instance, it could be water, bullets, trash...

After improving the game a lot today, I think there is one last thing before
I can consider this game somehow complete: sound!

- [x] Compose theme song for main menu
- [ ] ~~Include sound effect when bullets are shot~~
- [x] Include sound effect when Honey is hurt
- [ ] ~~Include sound effect when anger mode is activated~~

Playing sound effects when bullets are shot makes the game unbearable to
play. The same applies for anger mdoe.

Feedback:

- [ ] Make bullets bigger
- [ ] Add more levels
- [ ] Maybe include a boss level

### Specs

Player:

- `x`: X position
- `y`: Y position
- `s2`: how many lives the player have
- `s2cd`: invincibility time
- `sp`: flag for checking if star power is activated
- `spcd`: star power cooldown
- `d`: direction

Enemy:

- `cx`: X coordinate focus
- `cy`: Y coordinate focus
- `dx`: X coordinate distance
- `dy`: Y coordinate distance
- `fx`: X coordinate frequency
- `fy`: Y coordinate frequency
- `s`: sprite id
- `a`: flag to check whether enemy is active or not
- `x`: X coordinate position
- `y`: Y coordinate position
- `d`: direction

Bullet:

- `x`: X position
- `y`: Y position
- `a`: flag to indicate whether bullet is active or not
- `vx`: speed on X direction
- `vy`: speed on Y direction

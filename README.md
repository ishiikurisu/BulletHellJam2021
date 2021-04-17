# Bullet Hell Jam 2021

[My stuff related to the #bullethelljam](https://itch.io/jam/bullet-jam-2021).

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

### Specs

Player:

- `x`: X position
- `y`: Y position
- `s2`: how many lives the player have
- `s2cd`: invincibility time
- `sp`: flag for checking if star power is activated
- `spcd`: star power cooldown

Enemy:

- `d`: time delay before appearing
- `p`: bullet pattern to be used
- `tx`: X position
- `ty`: Y position
- `cd`: cooldown
- `s`: sprite code
- `a`: flag to indicate whether enemy is alive of not

Bullet:

- `x`: X position
- `y`: Y position
- `a`: flag to indicate whether bullet is active or not
- `vx`: speed on X direction
- `vy`: speed on Y direction

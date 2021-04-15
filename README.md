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

I will start developing the "Fueled by Hate" idea. I will use TIC80 right now
but I will probably need to check if I can spawn that many sprites on screen.

Should this be a platformer in the first place? I think I will try to nail the
idea first then I see if I should make this a platformer or not.

### Specs

Enemy:

- `d`: time delay before appearing
- `p`: bullet pattern to be used
- `tx`: X position
- `ty`: Y position
- `cd`: cooldown
- `s`: sprite code

Bullet:

- `x`: X position
- `y`: Y position
- `a`: flag to indicate whether bullet is active or not
- `vx`: speed on X direction
- `vy`: speed on Y direction

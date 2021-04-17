final color WHITE = #FFFFFF;
final color BLACK = #000000;
final color RED = #FF0000;
final int NO_BULLETS = 1000;

enum PatternType {
    SIMPLE,
    ROTATION_1
}

class Position {
    float x;
    float y;
}

class Bullet extends Position {
    float vx;
    float vy;
    boolean active;

    public Bullet(float x, float y) {
        this.x = x;
        this.y = y;
        this.active = false;
    }

    public void update() {
        if (active) {
            x += vx;
            y += vy;
        }
    }

    public boolean isOutOfBounds(float width, float height) {
        return this.x < 0 || this.x > width || this.y < 0 || this.y > height;
    }
}

class Source extends Position {
    int cooldown = 0;
    int cooldownFrameCount = 20;
    PatternType pattern;
    float[] parameters;
    private float cx;
    private float cy;

    public Source(float x, float y, PatternType pattern) {
        this.cx = x;
        this.cy = y;
        this.x = x;
        this.y = y;
        this.cooldown = 0;
        this.pattern = pattern;
    }

    public void update() {
        if (this.cooldown > 0) this.cooldown--;

        switch (pattern) {
            case ROTATION_1:
                // parameters = {x radius, x frequency, y radius, y frequency}
                this.x = this.cx + parameters[0] * sin(millis() * TWO_PI / parameters[1]);
                this.y = this.cy + parameters[2] * sin(millis() * TWO_PI / parameters[3]);
                break;

            default:
                break;
        }
    }

    public boolean isReadyToShoot() {
        return this.cooldown == 0;
    }

    public void resetCooldown() {
        this.cooldown = cooldownFrameCount;
    }
}

Bullet[] bullets;
Source[] sources;

void shoot(Source source) {
    int b = 0;
    int nb = 4;

    while (nb >= 0) {
        while (bullets[b].active) {
            b++;
        }

        Bullet bullet = bullets[b];
        bullet.active = true;
        bullet.x = source.x;
        bullet.y = source.y;
        bullet.vx = (nb < 2)? 1 : -1;
        bullet.vy = (nb % 2 == 0)? 1 : -1;
        bullets[b] = bullet;

        nb--;
    }
}

void setup() {
    size(800, 600);

    sources = new Source[3];
    sources[0] = new Source(width / 4, height / 2, PatternType.SIMPLE);
    sources[1] = new Source(3 * width / 4, height / 2, PatternType.SIMPLE);
    sources[2] = new Source(width / 2, height / 4, PatternType.ROTATION_1);
    sources[2].parameters = new float[] {200, 3000, 10, 500};

    bullets = new Bullet[NO_BULLETS];
    for (int i = 0; i < NO_BULLETS; i++) {
        bullets[i] = new Bullet(0, 0);
    }
}

void draw() {
    int i, j;

    // PROCESS
    for (i = 0; i < sources.length; i++) {
        Source source = sources[i];
        source.update();

        if (i == 2) {
            println("x " + source.x + " y " + source.y);
        }

        if (source.isReadyToShoot()) {
            shoot(source);
            source.resetCooldown();
        }
    }

    for (i = 0; i < bullets.length; i++) {
        bullets[i].update();
        if (bullets[i].isOutOfBounds(width, height)) {
            bullets[i].active = false;
        }
    }

    // WRITE
    background(WHITE);
    noStroke();

    fill(BLACK);
    for (i = 0; i < sources.length; i++) {
        Source source = sources[i];
        circle(source.x, source.y, 5);
    }

    fill(RED);
    for (i = 0; i < bullets.length; i++) {
        Bullet bullet = bullets[i];
        if (bullet.active) {
            circle(bullet.x, bullet.y, 5);
        }
    }
}

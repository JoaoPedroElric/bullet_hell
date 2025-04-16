y += vel_y;
x += vel_x;

vel_y += gravidade;
vel_x = gravidade;

alpha -= 0.03;

if (alpha <= 0) {
    instance_destroy();
}
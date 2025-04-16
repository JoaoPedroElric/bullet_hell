y += vel_y;
x += vel_x;

vel_y += gravidade;
vel_x = gravidade;

alpha -= 0.03;

image_xscale = lerp(image_xscale,escala_x, .1);
image_yscale = lerp(image_yscale,escala_y, .1);

if (alpha <= 0) {
    instance_destroy();
}
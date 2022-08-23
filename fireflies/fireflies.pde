void setup()
{
  size(800,600);
}

void draw()
{
  fill(color(0,0,0,10));
rect(0, 0, 800, 600);
fill(color((random(255)),(random(255)),(random(255)),(random(175))));
circle(random(800), random(600), random(50));
}

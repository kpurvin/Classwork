Planet sun;

void setup()
{
  size(1600, 1200);
  fullScreen();
  sun = new Planet(5);
  sun.dist = 0;
  sun.speed = 0;
  sun.createMoons();
}

void draw()
{
  noStroke();
  fill(color(0,0,0,200));
  rect(0,0, width, height);
  translate(width/2, height/2);
  scale(.5);
sun.Show();
}

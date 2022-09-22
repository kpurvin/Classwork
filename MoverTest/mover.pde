class Mover
{
PVector location;
PVector velocity;
PVector acceleration;

float x = 10;
float y = 10;
Mover()
{
  location = new PVector (random(width), random(height));
velocity = new PVector (random(-2,2),random(-2,2));
acceleration = new PVector (0,.1);
}

void update()
{
  acceleration = PVector .random2D();
  velocity.add(acceleration);
  location.add(velocity);
}

void display()
{
    stroke(0);
    fill(255);
    ellipse(x,y,16,16);
}

void checkEdges()
{
  if(location.x>width)
{
  location.x = 0;
}
  if(location.y>width)
{
  location.y = 0;
}


}
}

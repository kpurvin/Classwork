class Mover
{

PVector location = new PVector(0,0);
PVector velocity = new PVector(0,0);
PVector acceleration = new PVector(.2,.1);

Mover()
{
}


}
void update()
{
  acceleration = PVector.random2D();
  acceleration.mult(.2);
  velocity.add(acceleration);
  velocity.limit(6);
location.add(velocity);

}

void check()

{if(location.x < 0) location.x = width;
if(location.x > 0) location.x = 0;
if(location.y < 0) location.y = height;
if(location.y > 0) location.y = 0;
}

void display()

{
  stroke(0);
fill(175);
circle(location.x, location.y,16);

}

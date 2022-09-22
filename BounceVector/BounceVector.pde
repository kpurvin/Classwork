PVector location = new PVector(100,100);
PVector velocity = new PVector(1,3.3);

void setup()
{
size (1000,1000);
background(255);
}

void draw() 
{

  background(255);
  location.add(velocity);
  
  if(location.x>width)||(location.x<0))
  {
    velocity.x = velocity.x-1;
  }
   if(location.y>height)||(location.y<0))
  {
    velocity.y = velocity.y-1;
  }
  
  stroke(0);
  fill(175);
  ellipse(location.x,location.x,16,16);
}

class Shadow

{
   PVector location = new PVector(0,0);
   PVector velocity = new PVector(0,0);
   PVector acceleration = new PVector (.1,.3);
   float maxSpeed = 3; 
   float maxAccel = 2;
}

void update()
{
  PVector prey= new PVector(dx,dy);
    PVector dir = PVector.sub(prey,location);
    dir.normalize();
    dir.mult(max_acceleration);
    acceleration=dir;
    velocity.add(acceleration);
    velocity.limit(max_speed);
    location.add(velocity);
  
  
}
   
   void check()
   
   {
   
    if(location.x < 0) location.x = width;
    if(location.x > width) location.x = 0;
    if(location.y < 0) location.y = height;
    if(location.y > height) location.y = 0;}
   
   void display()
   {
    stroke(0);
    fill(175);
    circle(location.x,location.y,20);
   }
   

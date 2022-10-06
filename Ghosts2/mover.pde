class Mover
{
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector acceleration1 = new PVector(0,0);
  PVector acceleration2 = new PVector(0,0);
  float max_speed = random(.05,.5);
  float max_acceleration = random(.05,.5);
  boolean live = true;
 // float count = 200;
  //float newCount;
  float dist = 0; //dist from mouse
  
  Mover()
  {
    this.location.x = random(width);
    this.location.y = random(height);
  }
  
  void update() 
  {
    if(live)
    {
      PVector mouse = new PVector(mouseX,mouseY);
      PVector dir = PVector.sub(mouse,location);
       dist = dir.mag();
      
      //if(dist<30) count = count-1; newCount = count;
     
      
      dir.normalize();
      dir.mult((max_acceleration* -1));
      acceleration1=dir;
    
        acceleration2 = PVector.random2D();
      if(this.dist<200)
      {
     velocity.add(acceleration1);
      }
      else
      {
        velocity.add(acceleration2);
      }
   
   
      velocity.limit(max_speed);
      location.add(velocity);
  }
  }
  
  void bite(int x, int y)
  {
 
 // if(this.dist<30) this.live = false; 
  if(live)
    {
      if(this.dist < 30)
      {
      this.live = false;
      
        living = living-1;
      
      }
  if(living<100) max_speed = random(.075,.75); max_acceleration = random(.075,.75);
  if(living<50) max_speed = random(.1,1); max_acceleration = random(.1,1);
  if(living<25) max_speed = random(.25,1.25); max_acceleration = random(.25,1.25);
  if(living<13) max_speed = random(.5,1.5); max_acceleration = random(.5,1.5);
  if(living<7) max_speed = random(.75,1.75); max_acceleration = random(.75,1.75);
  if(living<4) max_speed = random(1,2); max_acceleration = random(1,2);
  if(living<2) max_speed = random(1.25,2.25); max_acceleration = random(1.25,2.25);
  
  
  }
  
  }
  
  void check()
   {
   if(live)
    
  {
    if(location.x < 0) location.x = width;
    if(location.x > width) location.x = 0;
    if(location.y < 0) location.y = height;
    if(location.y > height) location.y = 0;
  }
   }
 
  void display() 
  {
    stroke(0);
    if (this.live) fill(175);
    //fill(color(random(255)));
    circle(location.x,location.y,16);
    //stroke (1);
    colorMode(HSB,width+height, 255,255);
    fill(dist, 100,100-(dist/5));
    //circle(mouseX,mouseY, 400);
    //println(newCount);
    }
   }

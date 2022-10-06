class Mover
{
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector acceleration1 = new PVector(0,0);
  PVector acceleration2 = new PVector(0,0);
  float max_speed = random(.5,5);
  float max_acceleration = random(.1,1);
  boolean live = true;
 // float count = 150;
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
  //if(newCount<75) max_speed = random(.75,7); max_acceleration = random(.15,1.5);
 // if(newCount<37) max_speed = random(1,10); max_acceleration = random(.2,2);
  //if(newCount<19) max_speed = random(1.5,15); max_acceleration = random(.25,2.5);
  //if(newCount<9) max_speed = random(2,20); max_acceleration = random(.3,3);
  //if(newCount<5) max_speed = random(2.5,25); max_acceleration = random(.35,3.5);
  //if(newCount<3) max_speed = random(3,30); max_acceleration = random(.4,4);
  //if(newCount<2) max_speed = random(3.5,35); max_acceleration = random(.45,4.5);
  
  
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
    fill (dist, 255,255);
    //circle(mouseX,mouseY, 400);
    //println(newCount);
    }
   }

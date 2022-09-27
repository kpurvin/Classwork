PVector pos = new PVector(100,100);
PVector speed = new PVector(1.5,2);
PVector force = new PVector(.3,.1);

void setup()

{ 
  size(1000,1000); 
  //fullScreen();
  frameRate(4);
}

void draw()

{
  fill(255,255,255,0);
  rect(0,0,width,height);
  translate(width/2,height/2);
  stroke(2);
  circle(pos.x,pos.y,30);
 drawV(pos,color(0,0,0));
drawV(speed,color(255,0,0));
  speed = speed.add(force);
  pos = pos.add(speed);
  drawV(pos,color(0,0,255));
  
  if(pos.x > width || pos.x < 0)
  {speed.x = speed.x * (-1);}
  
 if(pos.y > height || pos.y < 0)
  {speed.y = speed.y * (-1);}

}


void drawV(PVector v,color c)
{
  stroke(c);
  line(0,0,v.x,v.y);
  
}

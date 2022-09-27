float xpos = 100;
float xspeed = 1.5;
float ypos = 100;
float yspeed = 1.4;

void setup()

{ 
  size(1000,1000); 
}

void draw()

{
  background(255);
  circle(xpos,ypos,10);
  xpos= xpos + xspeed;
  ypos= ypos + yspeed;
  if(xpos > width || xpos < 0)
  {
    xspeed = xspeed * (-1);
  }
  if(ypos > height || ypos < 0)
  {
    yspeed = yspeed * (-1);
  }
}

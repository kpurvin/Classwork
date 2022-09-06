float _angle = 6;

void setup ()
{
  size(800, 600);
  surface.setTitle ("Solar");
  surface.setResizable(true);
  surface.setLocation(100,100);
  
}
void draw()
{
background(8);
noStroke();
  translate (width/2, height/2);
  circle (0, 0, 100);
  rotate(radians(_angle));
  translate (200,0);
  circle(0, 0, 50);
  
  rotate(radians(_angle));
  translate (50, 75);
  circle(0, 0, 25);  
  rotate(radians(_angle));
  translate (-500, -200);
  circle(0, 0, 225);
  _angle = _angle+1;
}

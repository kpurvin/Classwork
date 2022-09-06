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

noStroke();
fill(color(0,0,0,10));
  translate (width/2, height/2);
  circle (0, 0, 100);
  
  pushMatrix();
  rotate(radians(_angle));
  translate (200,0);
  circle(0, 0, 50);
      pushMatrix();
    rotate(radians(_angle)*3);
    translate(70,0);
    circle(0,0,10);
    popMatrix();
  popMatrix();

  
  
  pushMatrix();
 rotate(radians(_angle*2));
 translate (50, 75);
  circle(0, 0, 25);  
  popMatrix();
  
  pushMatrix();
  rotate(radians(_angle/2));
  translate (-500, -200);
  circle(0, 0, 225);
  popMatrix();
  _angle = _angle+1;
 
  
}

void clearScene()
{
noStroke();
fill(color(0,0,0,10));
rect(0,0,800,600);
}

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
clearScene();
noStroke();
  translate (width/2, height/2);
  fill(color(225, 100, 10));
  circle (0, 0, 100);
  
  pushMatrix();
  rotate(radians(_angle));
  translate (200,0);
  fill(color(10, 60, 25));
  circle(0, 0, 50);
      pushMatrix();
    rotate(radians(_angle)*3);
    translate(70,0);
    fill(color(360, 50, 200));
    circle(0,0,10);
    popMatrix();
  popMatrix();

  
  
  pushMatrix();
 rotate(radians(_angle*2));
 translate (50, 75);
 fill(color(340, 90, 25));
  circle(0, 0, 25);  
  popMatrix();
  
  pushMatrix();
  rotate(radians(_angle/2));
  translate (-500, -200);
  fill(color(88, 6, 25));
  circle(0, 0, 225);
  popMatrix();
  
   pushMatrix();
  rotate(radians(_angle/-10));
  translate (-800, 800);
  fill(color(50, 20, 25));
  circle(320, 0, 190);
  popMatrix(); 
  
  _angle = _angle+1;
 
  
}

void clearScene()
{
noStroke();
fill(color(0,0,0,10));
rect(0,0,8000,8000);
}

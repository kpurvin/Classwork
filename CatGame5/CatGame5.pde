int nMover = 150;
Mover [] m = new Mover[150];
boolean clicked = false;
int living = nMover;
void setup()
{
  size(1000,1000);
  //fullScreen();
  for(int i = 0; i < nMover; i = i +1)
  {
  m[i] = new Mover();
}
}

void draw()
{
 noStroke();
 fill(0,0,0,25);
 rect(0,0,width,height);
  for(int i = 0; i < m.length; i = i +1)
  {
  m[i].update();
  m[i].check();
  m[i].display();
}
hud();
}
void hud()
{fill(255);
text(living,100,100);


}


void drawMe()
{
  noStroke();
  fill(255,0,100);
  circle(mouseX,mouseY,60);
}

void mousePressed()
{ 
  for(int i = 0; i < m.length; i = i +1)
  {
  m[i].bite(mouseX,mouseY);
}
}

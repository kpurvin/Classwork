int nMover = 150;
Mover [] m = new Mover[150];
boolean clicked = false;
int living = nMover;
PGraphics screen;

void setup()

{
  size(1000,1000, P3D);
  //fullScreen();
  screen = CreateGraphics();
  for(int i = 0; i < nMover; i = i +1)
  {
  m[i] = new Mover();
}
}

void draw()
{screen.beginDraw();
 screen.fill(0,0,0,25);
 screen.rect(0,0,width,height);
  for(int i = 0; i < m.length; i = i +1)
  {
  m[i].update();
  m[i].check();
  m[i].display();
}
screen.endDraw();
image(screen,0,0);
fill(color(255,255,255));
hud();
}
void hud()
{
  translate(width/2,10);
  fill(color(0,0,100));
  textAlign(CENTER);
  text(living,0,0);
  translate(-nMover/2,0);
  fill(color(living/10,100,100));
  rect(0,0,living,10);
  noFill();
  stroke(color(0,0,100));
  rect(0,0,nMover,10);
  



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

int nMover = 200;
Mover [] m = new Mover[200];
boolean clicked = false;
int living = nMover;
//int undead = nMover;
void setup()
{
  //size(1000,1000);
  fullScreen();
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
  
  //translate(width/2,40);
  //fill(color(0,0,100));
  //textAlign(CENTER);
  //text(undead,0,0);
  //translate(-nMover/2,0);
 // fill(color(undead/10,100,100));
 // rect(0,0,undead,10);
 // noFill();
  //stroke(color(0,0,100));
  //rect(0,0,nMover,10);
  



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

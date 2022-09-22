Mover mover;

void setup()
{
size (1000,1000);
mover = new Mover();
}

void draw()
{
  fill(color(255,255,255));
  noStroke();
  rect(0,0,width,height);
  mover.update();
  mover.checkEdges();
  mover.display();
}
  

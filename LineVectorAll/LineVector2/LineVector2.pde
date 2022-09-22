void setup()
{
size (1000,1000);

}

void draw()
{
  background(225);
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  mouse.sub(center);
  mouse = mouse.normalize();
  mouse = mouse.mult(30);
  translate (width/2,height/2);
  line(0,0,mouse.x,mouse.y);
}

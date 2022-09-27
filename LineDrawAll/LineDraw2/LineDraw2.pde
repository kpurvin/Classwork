void setup()

{ 
  size(1000,1000); 
  //fullScreen();
  frameRate(10);
}

void draw()
{
background(255);
PVector m = new PVector (mouseX, mouseY);
PVector c = new PVector (width/2,height/2);
m = m.sub(c);
m.setMag(100);

translate(width/2,height/2);

line(0,0,m.x,m.y);
}

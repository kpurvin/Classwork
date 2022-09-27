Mover m;


void setup()

{ 
  size(1000,1000); 
  //fullScreen();
  frameRate(10);
  
  m = new Mover();
}

void draw()
{
  background(255);
  m.update();
  m.check();
  m.display();
}

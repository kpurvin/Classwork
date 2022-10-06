import processing.sound.*;

SqrOsc square;


 void setup()
{
  size(1000,1000);
  background(255);

square = new SqrOsc(this);
square.play();
}

void draw()
{
  square.freq(mouseX);
  square.amp((float)mouseY/height);
} 

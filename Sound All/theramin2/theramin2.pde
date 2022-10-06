import processing.sound.*;
SqrOsc square;
float count = 0;

 void setup()
{
  size(1000,1000);
  background(255);

square = new SqrOsc(this);
square.play();
}

void draw()
{
  square.freq(sin(radians(count))*mouseX);
  square.amp(sin(radians(count)));
  count++;
} 

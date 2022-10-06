import processing.sound.*;

SqrOsc square;
Reverb reverb;
float count = 0;

 void setup()
{
  size(1000,1000);
  background(255);

reverb = new Reverb(this);
square = new SqrOsc(this);
square.play();
reverb.process(square);
}

void draw()
{
ln.play();
reverb.process(square);

  square.freq(sin(radians(count))*mouseX);
  square.amp(sin(radians(count)));
  count++;
} 

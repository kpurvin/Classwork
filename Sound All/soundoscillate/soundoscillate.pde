import processing.sound.*;

SinOsc sine;


 void setup()
{
  size(1000,1000);
  background(255);

sine = new SinOsc(this);
sine.play();
}

void draw()
{
}

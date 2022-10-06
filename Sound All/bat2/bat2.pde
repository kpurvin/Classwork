import processing.sound.*;
Amplitude amp;
AudioIn in;

void setup()
{
  size(1000,1000);
  background(255);
  
  amp = new Amplitude(this);
  in = new AudioIn(this,0);
  in.start();
  amp.input(in);
}

void draw()
{
  background(255);
  circle(width/2, height/2, amp.analyze()*100000);
  fill(255,255,255,10);
  println(amp.analyze());
}

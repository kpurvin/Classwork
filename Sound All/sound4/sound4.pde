import processing.sound.*;
Amplitude amp;
AudioIn in;

SoundFile = file;

void setup()
{
  size(1000,1000);
  background(255);
  amp = new Amplitude(this);
 
  
  file = new SoundFile(this, "x.wav");
  file.play();
  
  
  in = new AudioIn(this,0);
  in.start();
  amp.input(in);
}

void draw()
{
  background(255);
  circle(width/2, height/2, amp.analyze()*1000);
  fill(255,255,255,10);
  println(amp.analyze());
}

void mousepRESSED()
{
  file.stop();
  file.play();
}

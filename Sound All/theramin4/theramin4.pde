float sustainLevel = .3;
float releaseTime = .4;

 void setup()
{
  size(1000,1000);
  background(255);

triOsc = new TriOsc(this);

env = new Env(this);
}

void draw()
{
} 

void mousePressed()
{
  triOsc.play();
  triOsc.freq(mouseX);
  env.play(TriOsc,attackTime,sustainTime,sustainLevel,releaseTime);
}

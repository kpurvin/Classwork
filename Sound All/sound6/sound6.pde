import processing.sound.*;

AudioSample sample;


int samples = 100;

 void setup()
{
  size(1000,1000);
  background(255);

int resolution = 1000;
float[] sinewave = new float[resolution];
for(int i = 0; i<resolution; i++)
{
  sinewave[i] = random(0,1);
}
 
 sample = new AudioSample(this, sinewave, resolution);
 
 sample.amp(.5);
 sample.loop();
  
  
}

void draw()
{
}

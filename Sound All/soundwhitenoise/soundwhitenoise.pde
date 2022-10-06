import processing.sound.*;

AudioSample sample;


 void setup()
{
  size(1000,1000);
  background(255);

sample = new AudioSample(this,100000);
for(int i = 0; i<sample.frames(); i++)
{
  sample.write(i,sin(radians(1/2)));
}
 

 sample.loop();
    
}

void draw()
{
}

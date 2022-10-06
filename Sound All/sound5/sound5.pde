import processing.sound.*;

SoundFile sample;
Waveform waveform;


int samples = 100;

public void setup()
{
  size(1000,1000);
  background(255);
  amp = new Amplitude(this);
 
  
fft = new FFT(this, bands);
in = new AudioOn(this, 0);
fft.input(in);
  
  
  
}

public void draw()
{
beginShape();
for(int i = 0; i<samples; i++)
{
  vertex(
  map(i,0,samples,0,width),
  map(waveform.data{i}, -1, 1, 0, height)
  );
}
endShape();
}

float angle = 140;

void setup ()
{
 
  size (1000, 1000);
  
}

void draw ()
{
  noStroke();
  fill(color(0,0,0,5));
  rect(0,0,1000,1000);
  
  colorMode(HSB);
  
  angle = angle+0.01;
  if(angle > 360) angle = 0;
  println(angle);
  float hue = random(angle,angle+50);
  float saturation = random(100,150);
  float brightness = random(200,255); 
  float fade = random(0,255);
  
  color circle_color = color(hue,saturation,brightness,fade);
  fill(circle_color);
  
  //fill(color(random(255),random(255),random(255),random(200)));
  circle(random(1000),random(1000),random(50,200));

}

//random colors/ transparency

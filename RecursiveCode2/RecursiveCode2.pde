void setup()
{
  size(800,600);
  float h = 100;
  recursive(
    0, height/2, 
    width,(height/2)+h,
    width/2, (height/2)+h,
    width, height/2,
    1);
}

void recursive(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4, int gen)
{
  stroke(color(0,0,0));
  line(x1, y1, x2, y2);
  stroke(color(255, 0,0));
  line(x3, y3, x4,y4);
  float h = random(-100,100);
  if(gen>0)
    {
  recursive(x1, y1, x1/2,y1+h, x1/2, y1+h,x2,y2, gen-1);
  recursive(x2, y2, x3/2,y3+h, x1/2, y1+h,x4,y4, gen-1);
  
    }
}

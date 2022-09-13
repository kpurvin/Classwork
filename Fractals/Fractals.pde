void setup()
{
  size (800, 600);
  //recursive(0, height/2, width,, height/2,2);
  drawCircle(width/2, height/2, height);
}

void drawCircle(float x, float y, float radius)
  {
  noFill();
  ellipse(x, y, radius, radius);
  if(radius >10)
    {
    drawCircle(x+radius/2, y, radius/2);
    drawCircle(x-radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
    }
  }

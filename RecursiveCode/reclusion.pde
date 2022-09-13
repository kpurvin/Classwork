void setup()
{
  size(800,600);
  translate(width/2, height/2);
  recursive(200);
}

void recursive(int gen)
{
  circle(0,0, height);
  scale(.99);
  if (gen>0) recursive(gen-1); 
}

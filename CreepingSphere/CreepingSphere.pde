/*
Our first example
It makes random circles
*/

int screenX = 1000;
int screenY = 1000;
void setup ()
{
  println(screenX);
  //set window size
  size (1000, 1000);
  screenX = 600;
  screenY = 600;
}

void draw ()
{
  color background = color(0,255,255,10);
  fill(background);
  
  rect(300,300,screenX,screenY);
  circle(mouseX,mouseY, (220));
  //circle(mouseX/10, mouseY/10, 20);
  //circle(mouseY, mouseX, 100);
  circle(mouseX, mouseY, (mouseX+mouseY)/2);
}

float _angle = 30;

void setup()

{
size(800,600);
}

void draw()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
  
clearScene();
_angle =setAngle(_angle, .5);
drawCircle(_angle);
}
void clearScene()
{
  //partial scene clear
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
}

float setAngle(float angle, float step)
{
  //check angle value
  angle = angle + step;
  if(angle > 360)
  
 {
   angle = 0;
 }
println(angle);
return (angle);
}

void drawCircle(float angle)
{
  //draw ranom circle
  colorMode(HSB, 360, 100, 100);
  float hue = random(angle, angle+60);
  float sat =random(100,100);
  float bri =random(100,100);
  color circle_color = color(hue,sat,bri);
  fill(circle_color);
  circle(random(800),random(600), random (50,120));
}

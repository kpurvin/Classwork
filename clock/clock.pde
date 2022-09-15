float angle = 1;
float angleB = 1;



void setup()
{
size(1000,800);
}

void draw()
{
translate(width/2, height/2);
circle(0,0,height-100);
fill(color(255,255,255,255));

Face();


pushMatrix();
rotate(radians(angle));
translate(0,-325);
circle (0,0, 50);
if (angle < 360);
{
angle = angle+3;
}
popMatrix();

pushMatrix();
rotate(radians(angleB));
translate(0,-325);
circle (0,0, 50);
if (angleB < 360);
{
angleB = angleB+.05;
}
popMatrix();


}

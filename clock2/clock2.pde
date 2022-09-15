float angle = 1;
float angleB = 1;
//float angleC = 1;


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
//translate(0,-325);
line (0,0,0, -325);
if (angle < 360);
{
angle = angle+3;
}
popMatrix();

pushMatrix();
rotate(radians(angleB));
//translate(0,-325);
line(0,0,0, -200);
if (angleB < 360);
{
angleB = angleB+.05;
}
popMatrix();

//pushMatrix();
//rotate(radians(angleC));
//translate(0,-325);
//line(0,0,0, -200);
//if (angleC < 360);
//{
//angleC = angleC+60;
//}
//popMatrix();



}

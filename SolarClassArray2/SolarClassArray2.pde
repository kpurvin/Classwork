int nPlanets = 30;
Planet[] p = new Planet[200];


void setup()

{
  fullScreen();

for(int i = 0; i< nPlanets; i = i+1)
{
 p[i] = new Planet(random(10,60),random(100,400)); 
 p[i].randomize();
 p[i].createMoons();
}
}

void draw()
{
 clearScene(); 
  noStroke();
  translate(width/2,height/2);
  for(int i = 0; i< nPlanets; i = i+1)
  {
p[i].Show();
}
}

void clearScene()
{
noStroke();
fill(color(0,0, 0,10));
rect(0, 0,8000,6000);
}

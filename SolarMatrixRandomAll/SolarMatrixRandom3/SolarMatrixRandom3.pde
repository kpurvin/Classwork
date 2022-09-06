float _angle = 6;

int maxPlans = floor(random(5,20));
float[] size = new float[200];
float[] speed = new float[200];
color[] col = new color[200];
float [] dist = new float [200];


void setup ()
{
  size(800, 600);
  surface.setTitle ("Solar");
  surface.setResizable(true);
  surface.setLocation(100,100);
  
  for(int i =0; i<maxPlans; i = i+1)
  {
    size[i] = random(20,100);
    col[i] = color(random(225),random(225),random(225));
    dist[i] = random(200,300);
    speed [i] = random (-2,2);
  }
  
  
}

void draw()
{
clearScene();
noStroke();
  translate (width/2, height/2);
  fill(color(225, 225, 225));
  circle (0, 0, 100);
  
  for(int i =0; i<maxPlans; i = i+1)
  {
 aPlanet(size[i], col[i], speed[i], dist[i]);
  }

  _angle = _angle+1;
}

 void aPlanet (float size, color col, float speed, float dist)
 {
pushMatrix();
rotate(radians(_angle)*speed);
translate(dist,0);
fill(col);
circle(0,0,size);
popMatrix();

 }
void clearScene()
{
noStroke();
fill(color(0,0,0,10));
rect(0,0,8000,6000);

}

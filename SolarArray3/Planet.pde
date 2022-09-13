class Planet
{
  float size = 20;
  float dist = 100;
  float angle = 0;
  float speed = 1.0;
  color col = color(225,225,225);
  
  Planet[] moons = new Planet[20];//moon
  int nMoons = 0;
  int generation = 0;
  Planet(int gen)
    {
      this.generation = gen;
      if(this.generation > 0)
         {
      this.createMoons();
         }
    }
    
    void Show()
  {
  pushMatrix();
  rotate(radians(this.angle));
  translate(this.dist,0);
  noStroke();
  fill(this.col);
  circle(0,0,this.size);
  this.angle = this.angle+this.speed;
  for(int i = 0; i< this.nMoons; i = i+1)
    {
    this.moons[i].Show();
    }
  popMatrix();
  }
 
  void randomize()
    {
    this.size = random(10,100);
    this.dist = random(50,400);
    this.angle = random(360);
    this.speed = random(-2,2);
    this.col = color(random(225),random(225),random(225));
    }

void createMoons()
  {
  this.nMoons = floor(random(4));
  for(int i = 0; i< this.nMoons; i = i+1)
    {
      this.moons[i] = new Planet(this.generation -1);
      this.moons[i].randomize();
    }
  }
}

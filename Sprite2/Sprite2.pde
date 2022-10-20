PShape p1;
PShape p2;
int count = 0;
float step = 1;

//Sprite s;


void setup()
{
size(1000,1000);
p1 = loadshape("sprite1.svg");
p2 = loadshape("sprite2.svg");
//s = new Sprite
//s.velocity.x=1;
//s.acceleration.x = 1;
//String[] files = {"sprite1.svg","sprite2.svg"};
//s.addAnimation()
}

void draw()
{
  count = count + 1;
  if(count > 10) count = 0;
  
  step = step +1;
  if(step>width+100) step = 100;
  
background(255);

if (count<5) 
{shape(p1,0,0);}

else
{shape(p2,0,0);}

//s.update();
//s.check();
//s.display();
}

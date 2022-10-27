Sprite s;

void setup()
{
  size(800,600);
  s = new Zombie();
  //s.velocity.x = 1.4;
  s.location.x=(-width/2)+100;
  s.location.y=height/2-200;
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.addAnimation(files,10);
    String[] files1 = {"zombie1b.svg","zombie2b.svg"};
  s.addAnimation(files1,10);
   String[] files2 = {"Zombie3.svg"};
  s.addAnimation(files2,10);
     String[] files3 = {"Zombie3b.svg"};
  s.addAnimation(files3,10);
  s. currentAni=0;
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  s.update();
  s.check();
  s.display();
}

void keyPressed()
{
  s.jump();
}

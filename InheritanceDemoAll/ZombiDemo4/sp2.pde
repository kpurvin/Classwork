Sprite s;
Sprite g, g2, g3;

void setup()
{
  size(800,600);
  s = new Zombie();
  //s.velocity.x = 1.4;  
  s.location.x=(-width/2)+100;
  s.location.y=(height/2)-100;
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.addAnimation(files,10);
    String[] files1 = {"zombie1b.svg","zombie2b.svg"};
  s.addAnimation(files1,10);
   String[] files2 = {"Zombie3.svg"};
  s.addAnimation(files2,10);
     String[] files3 = {"Zombie3b.svg"};
  s.addAnimation(files3,10);
  s. currentAni=0;
  
  g = new Ground();
  String[] files4 = {"ground6.svg"};
  String[] files5 = {"ground6.svg"};
  String[] files6 = {"ground6.svg"};
   g.addAnimation(files4,10);
   g.addAnimation(files5,10);
   g.addAnimation(files6,10);
   g.location.x = -(width/2);
  
    g2 = new Ground();
    g2.addAnimation(files4,10);
    g2.addAnimation(files5,10);
    g2.addAnimation(files6,10);
    g2.location.x = -(width/2)+ g2.boxx;
  
    g3 = new Ground();
    g3.addAnimation(files4,10);
    g3.addAnimation(files5,10);
    g3.addAnimation(files6,10);
   g3.location.x = -(width/2)+ (g3.boxx*2);
  
  //g.boxx = 1000;
  //g.boxy= 300;
  //g.addAnimation(files4,10);
  //println(g.boxy)
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  s.update();
  s.check();
  s.display();
  
  g.update();
  g.check();
  g.display();
  
    g2.update();
  g2.check();
  g2.display();
  
    g3.update();
  g3.check();
  g3.display();
}

void keyPressed()
{
  s.jump();
}

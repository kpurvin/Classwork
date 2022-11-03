import processing.sound.*;
SoundFile beep;

int gameState =0;

Zombie s;
Ground[] g;
int nGround = 0;
PImage bg;
Boulder[] b;
int nBoulder = 4;

void setup()
{
  size(1200,800);
  beep = new SoundFile(this,"beep.wav");
  bg = loadImage("bg.jpg");
  s = new Zombie();
  
  
  s.location.x=(-width/2)+100;
  s.location.y=(height/2)-200;
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.addAnimation(files,10);
  String[] files1 = {"zombie1b.svg","zombie2b.svg"};
  s.addAnimation(files1,10);
  String[] files2 = {"zombie3.svg"};
  s.addAnimation(files2,10);
  //String[] files3 = {"zombiefall1.svg","zombiefall2.svg"};
  //s.addAnimation(files3,10);
  s.currentAni=0;
  
  nGround = ceil(width/1000.0)+1; //number of ground element is acconted form screen size and ground element width
  g = new Ground[nGround];

  String[] files4 = {"ground7.svg"};
  String[] files5 = {"ground6.svg"};
  String[] files6 = {"ground8a"};

  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i] = new Ground();
    g[i].addAnimation(files4,10);
    g[i].addAnimation(files5,10);
    g[i].addAnimation(files6,10);
   
    g[i].location.x = -(width/2.0)+(g[i].boxx * i);
  }
  
  String[] files7 = {"rock.svg"};
  String[] files8 = {"rock2.svg"};
  String[] files9 = {"rock3.svg"};
  

  b = new Boulder[nBoulder];
  for(int i = 0; i < nBoulder; i = i + 1)
  {
    b[i] = new Boulder();
    b[i].addAnimation(files7,10);
    b[i].addAnimation(files8,10);
    b[i].addAnimation(files9,10);
    
    b[i].location.x = (width/2.0)+random(10,4000);
    b[i].location.y = (height/2.0)-200;
  }
}

void draw()

{
  if (gameState == 0) startScreen();
  if (gameState ==1) gamePlay();
  if (gameState ==2) deadScreen();
{
  image(bg,0,0);
  translate(width/2,height/2);
  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i].update();
    g[i].check();
    g[i].display();
  }
  
 
  for(int i = 0; i < nBoulder; i = i + 1)
  {
    b[i].update();
    b[i].check();
    b[i].display();
  }
  
  s.update();
  s.check();
  s.display();
  
  
}
}

void keyPressed()
{
  if (gameState == 0) gameState = 1;
  if (gameState ==1) s.jump();
  if (gameState ==2);
}


//import processing.sound.*;
//SoundFile beep;

int gameState = 0; //0 startscreen, 1 gameplay, 2 beeing dead

Zombie s;
Ground[] g;
int nGround = 0;
PImage bg;
Boulder[] b;
int nBoulder = 3;

void setup()
{
  size(1200,800);
 // beep = new SoundFile(this,"beep.wav");
  bg = loadImage("ground.tif");
  reset();
}

void draw()
{
  if(gameState == 0) startScreen();
  if(gameState == 1) gamePlay();
  if(gameState == 2) deadScreen(); 
}

void keyPressed()
{
  if(gameState == 0) gameState = 1;
  if(gameState == 1) s.jump();
  if(gameState == 2) 
  {
    reset();
    gameState = 1;
  }
}

void reset()
{
  s = new Zombie();
  s.location.x=(-width/2)+100;
  s.location.y=(height/2)-200;
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.addAnimation(files,10);
  String[] files1 = {"zombie2a.svg","zombie2b.svg"};
  s.addAnimation(files1,10);
  String[] files2 = {"Zombie3.svg"};
  s.addAnimation(files2,10);
  s.currentAni=0;
  
  nGround = ceil(width/1000.0)+1; //number of ground element is acconted form screen size and ground element width
  g = new Ground[nGround];

  String[] files3 = {"ground7.svg"};
  String[] files4 = {"ground6.svg"};
  String[] files5 = {"ground8.svg"};

  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i] = new Ground();
    g[i].addAnimation(files3,10);
    g[i].addAnimation(files4,10);
     g[i].addAnimation(files5,10);
    g[i].location.x = -(width/2.0)+(g[i].boxx * i);
  }
  
  String[] files6 = {"rock1.svg"};
  String[] files7 = {"rock2.svg"};
  String[] files8 = {"rock3.svg"};


  b = new Boulder[nBoulder];
  for(int i = 0; i < nBoulder; i = i + 1)
  {
    b[i] = new Boulder();
    b[i].addAnimation(files6,10);
    b[i].addAnimation(files7,10);
    b[i].addAnimation(files8,10);
    b[i].location.x = (width/2.0)+random(10,4000);
    b[i].location.y = (height/2.0)-200;
  }
}

void startScreen()
{
  noStroke();
  fill(355,0,200);
  rect(0,0,width,height);
  fill(255);
  textAlign(CENTER,CENTER);
  text("Press ANY key to start, and to jump",width/2,height/2);
}

void deadScreen()
{
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
  textAlign(CENTER,CENTER);
  text("RIP. Press ANY key for resurrection",width/2,height/2);
}

void gamePlay()
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
{
hud();
}

void hud()
{
  translate(width/2,10);
  fill(color(0,0,100));
  textAlign(CENTER);
  text(set,0,0);
}

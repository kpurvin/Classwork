PShape sprite;
PImage sprite1;
PGraphics sprite2;

void setup()
{
size (1000,1000);
//sprite = loadShape("flame.svg");
sprite1 = loadImage("clocksprite2.png");
//sprite2 = createGraphics(100,100);
}

void draw()
{
  sprite2.background(255);
  
background(0);
//shape(sprite,mouseX-(sprite.width/2),mouseY-(sprite.height/2));
image(sprite1,mouseX-(sprite1.width/2),mouseY-(sprite1.height/2));
//image(sprite2,mouseX-(sprite2.width/2),mouseY-(sprite2.height/2));

//sprite2.beginDraw();
//sprite2.circle(50,50,50);
//sprite2.endDraw();
}

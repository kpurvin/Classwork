PFont myFont;
PShape myShape;

void setup()
{
 size (800, 600);
 myFont = createFont("SourceCodePro-Regular", 50);
 textFont (myFont);
 String[] fontList = PFont.list();
 for(int i = 0; i < fontList.length; i = i+1)
   {println(fontList[i]);
  }
}

void draw()
{
  background(255);
  fill(0,0,255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Hello World", width/2, height/2);
  noFill();
  circle(width/2, height/2,300);
}

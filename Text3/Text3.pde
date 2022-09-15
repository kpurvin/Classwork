PFont myFont;
PShape myShape;

void setup()
{
 size (800, 600);
 myFont = createFont("SourceCodePro-Regular", 10);
myShape =loadShape ("Clock-Face-Clip-Art-Roman-Numerals-Mini-GraphicsFairy.jpg");
textFont(myFont);
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

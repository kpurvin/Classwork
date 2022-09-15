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
 String[] numbers = {"XXI", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI"}
 String[] anumbers = {"12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11",}
 
 translate(width/2,height/2);
 fill(255);
 circle(0,0,width-50);
 for (int 1 = 0; i < 12; i = i+1)
 
   {
   pushMatrix();
 rotate(radians(i*30));
 fill(0);
 //circle(0,0,100);
 textSize(60);
 textAlign(CENTER,CENTER);
 text(anumbers[i], 0 ,0 );
 popMatrix();
   }
 }
 

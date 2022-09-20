class Box
{
 float xCoord = 0;
 float yCoord = 0;
 float size = 100;
boolean isGrey = false;

Box()
{
  
}

void show()
{
  fill(color(255,255,255));
  if(this.isGrey) fill(color(0,0,0));
 square(this.xCoord*this.size, this.yCoord*this.size, this.size); 
}
void clicked()
  {
 if(
   mouseX > this.xCoord*this.size
     &&
   mouseX < (this.yCoord*this.size) + size 
     &&
   mouseY > this.yCoord*this.size
     &&
   mouseY < (this.yCoord*this.size) + size
   )
   {this.isGrey = !this.isGrey;
  }

  }
}

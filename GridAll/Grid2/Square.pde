class Box
{
 int xCoord = 0;
 int yCoord = 0;
 float size = 10;
boolean isGrey = false;
boolean nextGrey = false;

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
  
  void WhiteOrGrey()
  {
  int whiteBordering = 0;
  int x = this.xCoord;
  int xm = this.xCoord; if (xm<0) xm = maxX-1;
  int xp = this.xCoord; if (xp>maxX-1) xp = 0;
  
  int y = this.xCoord;
  int ym = this.xCoord; if (ym<0) ym = maxY-1;
  int yp = this.xCoord; if (yp>maxY-1) yp = 0;
  
  if(!mSquare[xm][y ].isGrey) whiteBordering = whiteBordering +1;
  if(!mSquare[xp][y ].isGrey)whiteBordering = whiteBordering +1;
  if(!mSquare[x ][ym].isGrey)whiteBordering = whiteBordering +1;
  if(!mSquare[x ][yp].isGrey)whiteBordering = whiteBordering +1;
  if(!mSquare[xp][ym].isGrey)whiteBordering = whiteBordering +1;
  if(!mSquare[xp][yp].isGrey)whiteBordering = whiteBordering +1;
  if(!mSquare[xm][ym].isGrey)whiteBordering = whiteBordering +1;
  if(!mSquare[xm][yp].isGrey)whiteBordering = whiteBordering +1;
  
  if(!this.isGrey) //rules
    {
    if(whiteBordering ==2) || (whiteBordering ==3)
      {
      this.nextGrey = false;
      }
    else
      {
      this.nextGrey = true;
      }
    }
    else
    {
      if(whiteBordering ==3)
        {
      this.nextGrey = false;
        }
      else
        {
         this.nextGrey = true;
        }
    }
  }

  
  //fill(255,255,255);
  //textSize(25);
  //text(whiteBordering,this.xCoord*this.size, this.yCoord*this.size);
  }
}

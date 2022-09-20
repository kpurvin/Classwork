Box[][] mSquare = new Box[1000][1000];
float size = 10;
int maxX= 0;
int maxY= 0;

int state = 0;

void setup()
{
  
  size (1000,1000);
  maxX = floor(width/this.size);
  maxY = floor(height/this.size);
  
  for(int y = 0; y < maxY; y = y +1)
  {
      for(int x = 0; x < maxX; x = x +1)
    {
 
    mSquare[x][y] = new Box();
    mSquare[x][y].size = size;
    mSquare[x][y].xCoord = x;
    mSquare[x][y].yCoord = y;
    }
  }
}
 void draw()
 {
   for(int y = 0; y < maxY; y = y + 1)
   {
     for(int x = 0; x < maxX; x = x + 1)
     {
   mSquare[x][y].WhiteOrGrey();
     }
    }
    for(int y = 0; y < maxY; y = y + 1)
   {
     for(int x = 0; x < maxX; x = x + 1)
     {
      // mSquare[x][y].isGrey = mSquare
     }
    
  } 
 }
  
  void mousePressed()
  {
    if(state ==0)
    {
     for(int y = 0; y < maxY; y = y + 1)
   {
     for(int x = 0; x < maxX; x = x + 1)
     {
       mSquare[x][y].clicked();
     }
   }
  }
  }
  
  void keyPressed()
  {
    if(state ==0)
    {state = 1;
    }
    else
    {
      state = 0;
    }
  }

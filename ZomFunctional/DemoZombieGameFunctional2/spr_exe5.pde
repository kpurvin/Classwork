//import processing.sound.*;

class Zombie extends Sprite
{
  boolean isJump = false;
  int nJump = 0;
  int set = 0;
  
  Zombie()
  {
    super();
  }
  
  void jump()
  {
    if(this.nJump < 3)
    {
      this.velocity.y=-8;
      this.acceleration.y = 0.2;
      this.isJump=true;
      this.nJump = this.nJump + 1;
    }  
  }
  
  void check()
  {
    //float actualY = screenY(this.location.x,this.location.y);
    if(location.y > (height/2)-200) 
    {
      this.acceleration.y = 0;
      this.velocity.y=0;
      this.location.y=height/2-200;
      println("landed");
      this.isJump=false;
      this.nJump = 0;
      set = set+1;
    }
    if(this.isJump)
    {
      if(this.velocity.y < 0)
      {
        this.currentAni = 2;  //up
      }
      else
      {
       // this.currentAni = 3;  //down
      }
    }
    else
    {
      this.currentAni = 0;  //grounded
    }
  }
  
}

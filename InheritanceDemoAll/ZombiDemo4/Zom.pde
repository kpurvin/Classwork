class Zombie extends Sprite

{
  boolean isJumping = false;
  
Zombie()
  {
  super();
  }
  
  void jump()
  {
    if(!this.isJumping)
    {
  this.velocity.y = -6;
  this.acceleration.y = .098;
  this.isJumping = true;
    }
  }
  
  void check()
  {
    float actualY = screenY(this.location.x,this.location.y);
    if(actualY > height/2+100)
    {
      this.acceleration.y=0;
      this.velocity.y = 0;
      this.location.y=height/2- 200;
      println("landed");
      this.isJumping = false;
    }
  if(this.isJumping)
  {this.currentAni = 2;
  }
  else
  {this.currentAni = 0;}
  }
  
}

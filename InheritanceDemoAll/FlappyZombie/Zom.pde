class Zombie extends Sprite

{
  boolean isJumping = false;
  
Zombie()
  {
  super();
  }
  
  void jump()
  {
  this.velocity.y = -3;
  this.acceleration.y = .098;
  this.isJumping = true;
  }
  
  void check()
  {
    
  }
  
}

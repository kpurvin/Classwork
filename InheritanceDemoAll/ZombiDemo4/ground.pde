class Ground extends Sprite
{
  Ground()
  {
    super();
    this.boxx= 800;
    this.boxy=600;
    this.reg.x =0;
    this.reg.y =0;
    this.velocity.x = -2;
    this.location.y = (height/2)-(boxy/1.2);
  }
  
  void check()
  {
  if(this.location.x > this.boxx)
  {
  this.location.x = -(width/2)+(this.boxx*2);
  }
  }
}

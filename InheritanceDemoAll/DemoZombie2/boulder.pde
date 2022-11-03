class Boulder extends Sprite
{
  Boulder()
  {
    super();
    this.velocity.x = -8;
    this.location.y = (height/2.0)-this.boxy;
  
  }
  
  void check()
  {
    if(this.location.x <= -this.boxx-(width/2.0))
    {
      this.location.x = (width/2.0)+random(10,4000);  //random boulder position
      this.location.y = (height/2.0)-200;             //boulder height
      this.currentAni = floor(random(0,this.nAni));
      this.boxx = this.ani[currentAni].frames[0].width;   //boulder size changes by he animation frame
      this.boxy = this.ani[currentAni].frames[0].height;
      this.ani[currentAni].w = this.boxx;
      this.ani[currentAni].h = this.boxy;
      this.reg.x = this.boxx/2;
      this.reg.y = this.boxy/2;
    }
    if(this.collide()) beep.play();
    gameState = 2;
  }
  
  boolean collide()
  {
    PVector s1 = new PVector(this.location.x,this.location.y);  //location of the boulder
    PVector s2 = new PVector(s.location.x,s.location.y);        //location of zombie
    PVector d = s1.sub(s2);   //vector from boulder to zombie
    float dist = d.mag();     //length of the vector
    float limit = (min(this.boxx,this.boxy)/2)+(min(s.boxx,s.boxy)/2);  //get the circle radiuses
    if(dist < limit) return(true);
    return(false);
  }
  
}

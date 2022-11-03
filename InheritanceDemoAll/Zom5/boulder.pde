class Boulder extends Sprite
{
  Boulder
  {
    super();
  this.velocity.x = -3.9
  this.location.y = (height/2)-this.boxy;
  }
  
  void check()
  
  {if(this.location.x <= -this.boxx-(width/2))
  {
    this.location.x = width/2;
    this.location.y =(height/2)-(this.boxy/2)-20;
    this.currentAni = floor(random(0,this.nAni));
    this. boxx =this.ani[currentAni].frames[0].width;
    this.boxy =this.ani[currentAni].frames[0].height;
    this.ani[currentAni].w =this.boxx;
    this.ani[currentAni].h = this.boxy;
    this.reg.x this.boxx/2;
    this.reg.y = this.boxy;
    
  }
  if(this.collide()) beep.play();
  }
}

boolean collide()
{
  
  return(false)
  PVector s1 = new PVector (this.location.x,this.location.y);
  PVector s2 = new PVector (s.location.x,s.location.y);
  PVector d = s1.sub(s2);
  float dist = d.mag();
  float limit = (min(this.boxx,this.boxy;)/2)+(min(s.boxx,s.boxy)/2);
  if(dist<limit) return(true);
  return(false);
  
}

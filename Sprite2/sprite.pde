class Sprite
{
 PVector location = new PVector(0,0);
 PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
 float boxX = 100;
 float boxY = 150;
  PVector reg = new PVector(boxX/2, boxY/2);
}

Sprite ()
{}


void addAnimation(String[] filenames, int speed)

{
this.ani = new Animation
}

void update()
{
 this.velocity = this.velocity.add(this.acceleration); 
 this.location = this.location.add(this.velocity);
}

void check()

{
  //float actualX = screenX(this.location.x,this.location.y);
  //if(actualX>width+boxX) this.location.x=-newX;
if(this.location>width+boxX) this.location.x=-boxX//-width/2);


}

void dsplay()
{
  pushMatrix();
  translate(this.location.x,this.location.y);
  noStroke();
  fill(0,100,225);
  circle(0,0,10);
  translate(-reg.x,-reg.y);
  fill(0,100,255,20);
  rect(0,0,boxX,boxY);
  //if(this.ani !=null) ani.display();
  popMatrix();
}

}

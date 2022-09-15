void Face()

{
  circle (0,0, 25);
  fill(color(0,0,255,50));
  
pushMatrix();
translate(0,-325);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(0,+325);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(+325,0);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(-325,0);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(-288,150);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(288,150);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(288,-150);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(-288,-150);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(-165,-280);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(165,280);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(165,-280);
circle (0,0, 50);
popMatrix();

pushMatrix();
translate(-165,280);
circle (0,0, 50);
popMatrix();

}

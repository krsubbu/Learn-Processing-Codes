void setup()
{
  size(640, 360);
}


void draw()
{
  background(255);

  ellipseMode(CENTER);
  rectMode(CENTER);

  // Zoog's body
  fill(150);
  rect(mouseX, mouseY, 25, 50);

  // Zoog's Head
  fill(255);
  ellipse(mouseX, mouseY-50, 60, 60);

  // Zoog's Eyes
  stroke(255);
  fill(0);
  ellipse(mouseX-20, mouseY-50, 10, 20);
  ellipse(mouseX+20, mouseY-50, 10, 20);

  // Zoog's legs
  stroke(0);
  line(88, 145, 75, 160);
  line(113, 145, 126, 160);
}
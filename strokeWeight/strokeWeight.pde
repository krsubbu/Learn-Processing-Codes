void setup()
{
  size(200,200);
  background(255);
}

void draw()
{
  stroke(0);
  strokeWeight(abs(mouseX-pmouseX));
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mousePressed()
{
  background(255,0,0);
}
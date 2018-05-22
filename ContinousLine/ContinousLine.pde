void setup()
{
  size(200,200);
  background(255);
}

void draw()
{
  stroke(0);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
float circleX;


void setup()
{
  size(640,360);
  circleX =  width/2;
}

void draw()
{
  background(0);
  ellipse(circleX,100,30,30);
  
  circleX += random(-5,5);
  
  println(circleX);
  
  
}
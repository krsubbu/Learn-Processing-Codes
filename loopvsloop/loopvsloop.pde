float x=0;
float spacing = 20;
float endX = 0;

void setup()
{
  size(640, 360);
  
}


void draw()
{
  background(0);
  stroke(255);
  x=0;
  while (x < endX) {
    line(x, 0, x, height);
    x = x + spacing;
  }
  
  endX +=1;
}
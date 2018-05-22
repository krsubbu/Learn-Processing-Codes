float circleX;
float circleY = 0;
float yspeed = 3;
float acceleration = 1;
float damping = 8;

void setup()
{
  size(640,360);
  circleX = width/2;
  
}

void draw()
{
  background(0);
  
  ellipse(circleX,circleY,30,30);
  
  circleY = circleY + yspeed;
  yspeed = yspeed + acceleration;
  
  if(circleY > height)
  {
    circleY = height;
    yspeed = yspeed * -0.1 * damping;
  }
}
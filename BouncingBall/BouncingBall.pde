float circleX = 0;
float circleY = 0;
float xspeed = 10;
float yspeed = 10;

void setup()
{
  size(640,360);
}

void draw()
{
  background(0);
  ellipse(circleX,circleY,30,30);
  
  circleX += xspeed;
  circleY += yspeed;
  
  if(circleX > width || circleX <0){
    xspeed = xspeed *-1;
  }
  
   if(circleY > height || circleY <0){
    yspeed = yspeed *-1;
  }
}
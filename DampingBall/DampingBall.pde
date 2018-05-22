float circleX = 0;
float circleY ;
float xspeed = 10;
float yspeed = 10;
float damping = 0.5;

void setup()
{
  size(640,360);
  circleY = height/2;
}

void draw()
{
  background(0);
  ellipse(circleX,circleY,30,30);
  
  circleX += xspeed;
 // circleY += yspeed;
 
  if(circleX > width){
    circleX  =  width;
    xspeed = xspeed * -1 * damping;
  }
  if(circleX < 0){
     circleX = 0;
     xspeed =  xspeed * -1 * damping;
  }
 /*  if(circleY > height || circleY <0){
    yspeed = yspeed *-1;
  }*/
}
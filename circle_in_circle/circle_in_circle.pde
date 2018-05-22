float x ;
float y ;

float theta;
float r = 75;


void setup(){
  size(300,300);
}

void draw(){
  background(255,10);
  //translate(width/2,height/2);
  x = r * sin(theta);
  y = r * cos(theta);
  fill(0);
  noStroke();
  ellipse(x+width/2,y+height/2,20,20);
  theta += 0.1;
}
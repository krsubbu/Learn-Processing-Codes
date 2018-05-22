float x;
float y;

float theta;
float r = 0;


void setup(){
  size(300,300);
  background(255);
  theta = 0.0;
}

void draw(){
  ellipseMode(CENTER);  
  x = r * sin(theta);
  y = r * cos(theta);
  fill(0);
  noStroke();
  ellipse(x+width/2,y+height/2,10,10);
  
  theta -= 0.1;
  r += 0.3;
}
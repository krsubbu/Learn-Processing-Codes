float x;
float y;

float theta;
//float r = 75;
void setup(){
  size(300,300);
  theta = 0.0;
}

void draw(){
  background(255);
  ellipseMode(CENTER);
  //translate(width/2,0);
  
  x = (sin(theta)+1)*width/2;
  //y = r * cos(theta);
  
  line(width/2,0,x,height/2);
  fill(0);
  ellipse(x,height/2,20,20);
  
  theta += 0.05;
  
}
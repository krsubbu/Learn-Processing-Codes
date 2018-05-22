float theta;
float x;
float y;
float r = 200;
void setup(){
  size(200,200); 
  theta = 0.0;
}

void draw(){
  y = r * sin(theta);
  
  ellipse(theta*90,y,20,20);
  
  theta += 0.1;  
}
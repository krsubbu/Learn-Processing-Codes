float x;
float y;
float radius;

void setup(){
  size(500,500,P3D);
  background(255);
  x =  width/2;
  y = height/2;
  radius = 600;
}

void draw(){
  recCircle(x,y,radius);
  
}

void recCircle(float x,float y, float radius){
  noFill();
  strokeWeight(0.1);
  ellipse(x,y,radius,radius);
  if(radius>2){
    recCircle(x+radius/2,y,radius/2);
    recCircle(x,y+radius/2,radius/2);
    recCircle(x-radius/2,y,radius/2);
    recCircle(x,y-radius/2,radius/2);
  }
  
}
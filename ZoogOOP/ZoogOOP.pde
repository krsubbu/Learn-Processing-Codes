Zoog[] zoog = new Zoog[25];

void setup(){
  size(640,360);
  for(int i =0; i<zoog.length; i++){
  zoog[i] = new Zoog(random(-10,width),random(-10,height));
  }
}


void draw(){
  background(255);
  for(int i =0; i<zoog.length; i++){
  zoog[i].display();
  zoog[i].jiggle();
  }
  
}
float spacing = 30;
void setup(){
  size(640,360);
}
void draw(){
  background(0);
 
  for(float x=0;x<width;x= x + spacing){
    for(float y=0;y<height;y=y + spacing){
      stroke(255);
      fill(random(255));
      rect(x,y,spacing,spacing);
    }
  }
}
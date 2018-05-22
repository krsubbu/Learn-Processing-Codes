PImage frog;

void setup(){
  size(858,536);
  background(0);
  
  frog = loadImage("frog.jpg");
  
}

void draw(){
  loadPixels();
  
  for(int row=0; row<width; row++){
    for(int col=0; col<height; col++){
        int index = row + col*width;
        float p1= brightness(frog.get(row,col));
        float p2= brightness(frog.get(row+1,col));
        
        float diff = abs(p1-p2);
        if(diff > mouseX){        
          pixels[index] = color(255);
        }else{
          pixels[index] = color(0);
        }
    }
  }
  
  updatePixels();
  
  
}
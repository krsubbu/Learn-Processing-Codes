PImage frog;

void setup(){
  size(858,536);
  background(255);
  
  frog = loadImage("frog.jpg");
  
}


void draw(){
  loadPixels();
  
  for(int row=0; row<width; row++){
    for(int col=0; col<height; col++){
      int index = row + col*width;
      float d = dist(row,col,mouseX,mouseY);
      float r = red(frog.get(row,col));
      float g = green(frog.get(row,col));
      float b = blue(frog.get(row,col));
      float factor = map(d,0,200,2,0);
      
      pixels[index] = color(r*factor,g*factor,b*factor);           
    }
  }
  
  updatePixels();
}
PImage frog;
void setup(){
  size(858,536);
  frog = loadImage("frog.jpg");  
}

void draw(){
  loadPixels();
  frog.loadPixels();
  float m = map(mouseX,0,width,0,2);
  for(int row =0; row< width;row++){
    for(int col=0;col< height;col++){
      int index =  row + col*width;
      float r = red(frog.pixels[index]);
      float g = green(frog.pixels[index]);
      float b = blue(frog.pixels[index]);
      
      pixels[index] = color(m*r,g*m,b*m);
    }
  }
  updatePixels();
  println(m);
}
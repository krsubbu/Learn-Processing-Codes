PImage frog;

void setup(){
  
  size(858,536);
  frog = loadImage("frog.jpg");
  background(0);
}

void draw(){
 loadPixels();
 frog.loadPixels();
 
 for(int row=0; row < width; row++){
   for(int col=0; col<height; col++){
     int index = row +col*width;
     int  temp = frog.pixels[index];
         frog.pixels[index] = frog.pixels[((width-1)+(height-1)*width)-index];
         frog.pixels[((width-1)+(height-1)*width)-index] = temp;
         
 }
}
updatePixels();
}
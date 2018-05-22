import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this,width,height);
  video.start();
}

void captureEvent(Capture video){
   video.read(); 
}

void draw() {
  background(0);
  String s="helloworld";
  video.loadPixels();
  for(int row = 0; row<height; row=row+10){
    for(int col=0; col<width; col = col+(int)textWidth(s)){
      int index = col + row*width;
      color c = video.pixels[index];
      textSize(10);
      fill(c);
      text(s,col,row);
    }
  }
}
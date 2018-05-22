import processing.video.*;

Capture video;
int row = 0;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, width, height);
  video.start();
}

void captureEvent(Capture video) {
  row++;
  if(row>=width){
    row =0;
  }
  video.read();

}

void draw() {
  loadPixels();
  video.loadPixels();

  int fixedRow = width/2;
  for (int col=0; col<height; col++) {
    int centerIndex = fixedRow + col *width; 
    int index = row + col*width;
    pixels[index] = video.pixels[centerIndex];
  }

  updatePixels();
}
import processing.video.*;

Capture video;
float worldRecord = 0.0;
float brightX = 0.0;
float brightY = 0.0;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, 640, 480);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {

  video.loadPixels();
  image(video,0,0);
  worldRecord = 0;
  for (int row=0; row<width; row++) {
    for (int col=0; col<height; col++) {
      int index = row + col* width;
      float bright = brightness(video.pixels[index]);
      if (bright > worldRecord) {
        worldRecord = bright;
        brightX = row;
        brightY = col;
      }
    }
  }

  fill(0);
  stroke(0);
  strokeWeight(5);
  ellipse(brightX, brightY, 10, 10);
}
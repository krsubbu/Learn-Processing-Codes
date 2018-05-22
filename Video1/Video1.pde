import processing.video.*;

Capture video;

void setup() {
  size(1280, 720);
  background(0);
  video = new Capture(this, 640, 480);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  //image(video, 0, 0);
  rectMode(CENTER);
  noStroke();
  for (int x=0; x< 100; x++) {
    int row = (int)random(640);
    int col = (int)random(480);
    int index = row + col *480;
    loadPixels();
    float r = red(video.pixels[index]);
    float g = green(video.pixels[index]);
    float b = blue(video.pixels[index]);
    fill(r, g, b, 75);
    ellipse(row, col, 20, 20);
  }
}
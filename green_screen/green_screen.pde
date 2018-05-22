import processing.video.*;

Capture video;
PImage prev;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, 640, 480);
  video.start();
  prev = createImage(width, height, RGB);
}

void captureEvent(Capture video) {
  //prev.copy(video, 0, 0, width, height, 0, 0, width, height);
  //prev.updatePixels();
  video.read();
}

void mousePressed() {
  prev.copy(video, 0, 0, width, height, 0, 0, width, height); // making it to learn background by clicking mouse when no one is there
  
  prev.updatePixels();
}
void draw() {
  image(video, 0, 0);
  loadPixels();
  video.loadPixels();
  prev.loadPixels();

  float threshold = map(mouseX, 0, width, 0, 50000);

  for (int row=0; row<width; row++) {
    for (int col=0; col<height; col++) {
      int index = row + col * width;

      color currentColor = video.pixels[index];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);

      color previous = prev.pixels[index];
      float r2 = red(previous);
      float g2 = green(previous);
      float b2 = blue(previous);

      float d = distance(r1, g1, b1, r2, g2, b2);

      if (d > threshold) {
        pixels[index] = currentColor;
      } else {
        pixels[index] = color(0, 255, 0);
      }
    }
  }
  updatePixels();
}

float distance(float r1, float g1, float b1, float r2, float g2, float b2) {
  return ((r1-r2)*(r1-r2)+(g1-g2)*(g1-g2)+(b1-b2)*(b1-b2));
}
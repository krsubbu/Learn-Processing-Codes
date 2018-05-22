import processing.video.*;

Capture video;
color trackColor;
float avgX = 0;
float avgY = 0;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, 640, 480);
  video.start();
}

void mousePressed() {
  int index = (int)(mouseX + mouseY * width);
  trackColor = color(video.pixels[(int)index]);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  image(video, 0, 0);
  video.loadPixels();


  int count = 0;
  float threshold = map(mouseX, 0, width, 0, 255);

  for (int row=0; row<width; row++) {
    for (int col=0; col<height; col++) {
      int index = row + col * width;
      int currentColor = video.pixels[index];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);

      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);

      float d = distance(r1, g1, b1, r2, g2, b2);

      if (d < threshold*threshold) {
        avgX += row;
        avgY += col;
        stroke(255);
        strokeWeight(1);
        point(row, col);
        count++;
      }
    }
  }

  if (count>0) {
    avgX = avgX/count;
    avgY = avgY/count;



    //fill(trackColor);
    //stroke(0);
    //ellipse(avgX, avgY, 20, 20);
  }
}

float distance(float r1, float g1, float b1, float r2, float g2, float b2) {
  return ((r1-r2)*(r1-r2)+(g1-g2)*(g1-g2)+(b1-b2)*(b1-b2));
}
PImage frog;

void setup() {
  size(858, 536);
  background(0);

  frog = loadImage("frog.jpg");
}

void draw() {

  frog.loadPixels();
  rectMode(CENTER);
  for (int x=0; x< 100; x++) {
    int row = (int)random(width);
    int col = (int)random(height);
    int index = row + col *width;
    loadPixels();
    float r = red(frog.pixels[index]);
    float g = green(frog.pixels[index]);
    float b = blue(frog.pixels[index]);
    fill(r, g, b, 50);
    noStroke();
    ellipse(row, col, 20, 20);
  }
  //updatePixels();
}
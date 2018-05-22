PImage frog;
float x;
float y;
  void setup() {
  size(858, 536);
  background(0);
  x = 0;
  y = 0;
  frog = loadImage("frog.jpg");
  
}

void draw() {
  x = random(width);
  y = random(height);

  float r = red(frog.get((int)x, (int)y));
  float g = green(frog.get((int)x, (int)y));
  float b = blue(frog.get((int)x, (int)y));

  drawCircle(x,y,r, g, b);
}


void drawCircle(float x, float y, float red, float green, float blue) {
  noStroke();
  fill(red, green, blue,75);
  ellipse(x, y, 20, 20);
}
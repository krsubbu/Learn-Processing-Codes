PImage frog;
float matrix[][] = {{1/9.0, 1/9.0, 1/9.0}, 
  {1/9.0, 1/9.0, 1/9.0}, 
  {1/9.0, 1/9.0, 1/9.0}};

int xstart;
int ystart;
int xend;
int yend;

void setup() {
  size(858, 536);
  background(0);

  frog = loadImage("frog.jpg");
}

void draw() {
  image(frog, 0, 0);
  rectMode(CENTER);
  noFill();
  stroke(0);
  strokeWeight(2);
  xstart = constrain(mouseX-10, 0, width);
  ystart = constrain(mouseY-10, 0, height);
  xend = constrain(mouseX+10, 0, width);
  yend = constrain(mouseY+10, 0, width);
  rect(xstart, ystart, 200, 200);
  blur();
}

void blur() {
  loadPixels();
  frog.loadPixels();

  float r = 0;
  float g = 0;
  float b = 0;
  int offset = 1;
  for (int row=xstart; row< xend; row++) {
    for (int col=ystart; col<yend; col++) {
      int index = row + col*width;
      for (int i=0; i < 3; i++) {
        for (int j=0; j< 3; j++) {
          int xloc = xstart+i - offset;
          int yloc = ystart+j-offset;
          int loc = xloc + width*yloc;
          loc = constrain(loc, 0, frog.pixels.length-1);
          r += red(frog.pixels[loc])*matrix[i][j];
          g += green(frog.pixels[loc])*matrix[i][j];
          b += blue(frog.pixels[loc])*matrix[i][j];
        }
      }
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      pixels[index] = color(r, g, b);
    }
  }

  updatePixels();
}
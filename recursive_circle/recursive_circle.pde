void setup() {
  size(300, 300);
}

void draw() {
  drawCircle(width/2,height/2,width);
}


void drawCircle(int x, int y, float radius) {
  ellipse(x, y, radius, radius);
  if ( radius>2) {
    radius *= 0.75;
    drawCircle(x, y, radius);
  }
}
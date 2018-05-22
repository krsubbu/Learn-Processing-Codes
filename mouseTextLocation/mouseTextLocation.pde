void setup() {
  size(640, 480);
  background(255);
}

void draw() {
  background(255);
  fill(200, 0, 0);
  stroke(0);
  int x = mouseX;
  int y = mouseY;
  ellipse(x, y, 8, 8);
  String s = "("+x+","+y+")";
  text(s, x+10, y-10);
}
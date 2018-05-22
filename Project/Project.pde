float x=0;
float y =0;
float alpha;

void setup() {
  size(300, 300);
  alpha = 50;
}

void draw() {
  float randomNum = random(1);
  x= random(width);
  y=random(height);

  ellipseMode(CENTER);

  if (randomNum <0.6) {
    fill(255, 0, 0,alpha);
    stroke(0.1);
    ellipse(x, y, 75, 75);
  }

  if (randomNum <0.7  && randomNum > 0.6) {
    fill(0, 255, 0);
    stroke(0.1);
    ellipse(x, y, 75, 75);
  }

  if (randomNum > 0.7) {
    fill(0, 0, 255);
    stroke(0.1);
    ellipse(x, y, 75, 75);
  }
}
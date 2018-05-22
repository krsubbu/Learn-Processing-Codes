float[] randomNum;
float value = 0;
void setup() {
  size(300, 300);
  randomNum = new float[20];
}


void draw() {
 // background(0);

  int num = (int)random(20);
  rect(num*width/20, 0, width/20, value);
  value += 1;
}
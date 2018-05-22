
float targetX[];
float targetY[];
float currentX[];
float currentY[];
String s ;
boolean t = false;

void setup() {
  size(600, 600);
  background(255);

  s= "kab aa rhe hai ";
  fill(0);
  textSize(32);
  targetX = new float[s.length()];
  targetY = new float[s.length()];
  currentX = new float[s.length()];
  currentY = new float[s.length()];
  for (int i=0; i<s.length(); i++) {
    currentX[i] = random(25, width-20);
    currentY[i] = random(25, height-20);
    text(s.charAt(i), currentX[i], currentY[i]);
  }
  targetX[0] = 150;
  targetY[0] =width/2;

  for (int j=1; j<s.length(); j++) {
    targetX[j] = targetX[j-1]+ textWidth(s.charAt(j-1));
    println(targetX[j]);
    targetY[j] = width/2;
  }
  frameRate(12);
}

void keyPressed() {
  t = true;
}

void draw() {
  background(255);
  for (int i=0; i<s.length(); i++) {
    text(s.charAt(i), currentX[i], currentY[i]);
  }
if(t){
  for (int i=0; i<currentX.length; i++) {
    currentX[i] = (currentX[i]+targetX[i])/2;
    currentY[i] = (currentY[i]+targetY[i])/2;
  }
}
}
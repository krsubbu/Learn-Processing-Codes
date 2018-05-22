float x;

void setup(){
  size(300,300);
  background(0);
  x=300;
}

void draw(){
  background(0);
  String s = "To be or not to be.";
  textSize(13);
  textAlign(LEFT);
  text(s,x,height-5);
  x--;
  if(x+textWidth(s)<0)
    x = width;
}
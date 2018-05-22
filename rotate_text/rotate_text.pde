float x;

void setup(){
  size(300,300);
  background(0);
  x=0;
}

void draw(){
  background(0);
  
  String s = "this text is spinning";
  textAlign(CENTER);
  translate(width/2,height/2);
  rotate(x);
  text(s,0,0);
  x = x + 0.01;
  
}
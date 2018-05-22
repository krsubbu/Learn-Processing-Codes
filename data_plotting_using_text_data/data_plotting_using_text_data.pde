int [] num;
float x=0;
float y=0;

void setup() {
  size(300, 300);
  String[] s = loadStrings("test.txt");
  String[] words = split(s[0],",");
  num = int(words);
  printArray(num);
}

void draw() {
  for(int i=0; i<num.length; i++){
    fill(0);
    stroke(255);
    rect(x,0,width/num.length,num[i]);
    x = x+width/num.length;
  }
}
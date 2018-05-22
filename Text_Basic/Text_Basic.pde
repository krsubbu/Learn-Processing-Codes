size(600,300);
background(0);
PFont f = createFont("Georgia",32);
String s = "Hello world!!!";
textAlign(CENTER);
float x = 50;
for(int i=0;i<s.length();i++){
  textFont(f);
  textSize(random(50,100));
 text(s.charAt(i),x,100);
 x = x + textWidth(s.charAt(i));
}

println(s);
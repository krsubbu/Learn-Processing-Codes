String weather;

void setup() {
  size(400,200);
  String[] lines = loadStrings("https://www.yahoo.com/news/weather");
  String words = join(lines, " ");
  int startIndex = words.indexOf("class=\"Va(t)\" data-reactid=\"37\"")+32;
  int endIndex =  words.indexOf("</span><span class=\"Va(t) Fz(.7em)");

  weather = words.substring(startIndex, endIndex);
}

void draw() {
  background(0);
  fill(255);
  textSize(15);
  float farenheit = float(weather);
  float  celsius =round( 5.0/9*(farenheit -32));
  String c =String.valueOf(celsius);
  String s = "Temperature: ";
 // String DEGREE  = "\u00b0";
  String end = " \u00b0C";
  text(s,10,100);
  text(c, 10+textWidth(s), 100);
  text(end,10+textWidth(s)+textWidth(c),100);
}
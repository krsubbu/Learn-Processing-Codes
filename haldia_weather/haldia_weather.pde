String weather;

void setup() {
  size(400,200);
  String[] lines = loadStrings("https://www.accuweather.com/en/in/haldia/196593/current-weather/196593");
  String words = join(lines, " ");
  String first = "<span class=\"realfeel\">";
  int len = first.length();
  int startIndex = words.indexOf("first")+len;
  int endIndex =  words.indexOf("</span>");

  weather = words.substring(startIndex, endIndex);
  println(weather);
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
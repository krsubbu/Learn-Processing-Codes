int i =0;
String[] words ;
IntDict concordance;
void setup() {
  //size(400, 400);
  background(0);
  String[] s = loadStrings("hamlet.txt");
  String ham = join(s, " ");
  words = splitTokens(ham, " :,;()!.?&*[]'/-_");
  concordance = new IntDict();
  for (int i=0; i<words.length; i++) {
    concordance.increment(words[i].toLowerCase());
  }
  concordance.sortValuesReverse();
  frameRate(5);
}

void draw() {
  background(0);
  textSize(32);
  String[] keys = concordance.keyArray();
  //for (int i=0; i<keys.length; i++) {
  //  int count = concordance.get(keys[i]);
  //  println(keys[i], count);
  //}
  int count = concordance.get(keys[0]);
  println(keys[0],count);

  noLoop();
}
String[] s = loadStrings("hamlet.txt");

String words = join(s," ");
String[] word = splitTokens(words," !'.?:;");
printArray(word);
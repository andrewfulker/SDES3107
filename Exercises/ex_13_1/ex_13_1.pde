//Exercise 13.1 

size (500,500);
PFont font1;
PFont font2;

background(21,21,43);
fill(250,54,76);

font1 = loadFont("Serif-48.vlw");
textFont(font1);
text("qwerty",150,100);

fill(213,12,34);



float mytextWidth = textWidth("word");
text("word",400,250);
println(mytextWidth);


size(1000, 1000);
float upperleft = width/4;

background(6464);
stroke(255,1,1);
fill(255,1,1);

//EXCERCISE 5.2

fill(1,1,255);
strokeWeight(10);
ellipse(300,400,300,300);
ellipse(800,900,500,500);
ellipse(height/4, upperleft, 200, 200);
triangle(height/4 + 500,upperleft,200,200,300,300);
//red lines pointing bottom right
line(300,400,850,750);
line(300,400,850,800);
line(300,400,850,850);
line(300,400,850,900);
line(300,400,850,950);
line(300,400,850,1000);

line(800,900,850,750);
line(800,900,850,800);
line(800,900,850,850);
line(800,900,850,900);
line(800,900,850,950);
line(800,900,850,1000);
if (upperleft < 260){ line(5, 6, 50, 100);}

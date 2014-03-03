
size(1000, 1000);
float upperleft = width/4;

background(6464);
stroke(255,1,1);
fill(255,1,1);

//EXCERCISE 6.1
for (int b = 100; b < width; b+= 100)
{
  for (int d = 100; d < width; d +=100)
  {
    line(b,d,10,10);
  }
}

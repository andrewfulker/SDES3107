// ("exercise 5.3")

size (500,500);
background (0,200,0); 
fill(23,25,68);

strokeWeight (1); 
stroke (25,235,268); 

float x=10;
ellipse(x-5, x-50, x/6, x/6);
ellipse(x,x, x/3, x/3);
ellipse(x+50, x+50, x/2, x/2);

if (11>10)
{
  stroke(5);
  strokeWeight(5);
  line(20,20,500,500);
}
else {
  stroke(0);
  strokeWeight(5);
  ellipse(500,500,500,500);
}

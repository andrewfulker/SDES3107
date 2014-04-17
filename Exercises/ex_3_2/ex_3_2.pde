

//println ("exercise 3.2"); 

size(1000,1000); 
background (0,0,100); 

strokeWeight(2); 
stroke(23,99,99); 

ellipse (60,60,60,60); 

//int variables

int a =250; 
line(a, 500, a, height);
a = a + 200; 
line (a, 330, a, width); 
a = a + 20; 
line (a, 0, a, height); 
int b =550; 
line(b, 890, b, height);
b = b + 430; 
line (b, 0, b, height); 
b = b + 600; 
line (b, 0, b, height); 

//float variables 
float middleX = width /2; 
float middleY = height/2; 

ellipse (middleX, middleY, 600,500); 
fill (150,50,100); 
line(230,654,65,12); 
line(78,76,234,867); 
stroke (454,87,23); 

float x= 70;
fill (0,0,155); 
ellipse(x-50, x-50, x/6, x/6);
ellipse(x,x, x/3, x/3);
ellipse(x+80, x+80, x/2, x/2);

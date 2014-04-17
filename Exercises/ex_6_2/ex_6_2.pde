//Exercise 6.1

size(1000,1000); 
float upperleft = width/4; 

background (0,50,200);  
fill (50,200,150); 

for (int a = 30; a < width; a+= 30) 
{
  for(int y =30; y < height;y +=30)
  {
  ellipse(a,y,3,3);
  }
}


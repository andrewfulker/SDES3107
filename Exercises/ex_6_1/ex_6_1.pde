// exercise 6.1

//draw a regular pattern with 5 lines 

size(500,500); 
background (36,23,60); 
stroke (20); 

//x = 0 5 10 15 20 .. width 
for (int x= 0; x < width; x=x+5) { 
  if ((x > 50) && (x <80)) {
    line (x,0,x, height); 
  }
    
    
       if ((x>80) && (x<130)){
 strokeWeight(4);
stroke (4,155,67); 
line (x,0,x,height); 
  }
  
  else { strokeWeight (8); 
  line (x,0,x, height);} 
}


//exercise 16.3
size (300,300); 
background (12,54,89); 
pushMatrix (); 
//  makes it possible to make easy alterations 
//  not to have a janga situation where it makes the 
//  structure not work 
translate (33,0); 


rect (100,100,66,30); 
pushMatrix ();
rotate (PI/10); 
//pie 

// rotate (PI/10);
// translate (33,0); 




rect(100,100,50,70); 
pushMatrix ();
scale (0.5); 

// scale (0.5); 
// rotate (PI/10);
// translate (33,0);

rect(100,100,66,30);

// able to draw the next same coordinate into another one 
popMatrix (); 
//popMatrix makes it possible to draw the same rectangle without 
//making it scaled down into another rectangle 

fill(150,150);
rect(100,100,66,30);
//repeat the same sketch, that isnt scaled down in (0.5) 



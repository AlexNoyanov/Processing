//  OpenCV camera tracking project
//  Using Arduino board for servo controlling 

//  By Alex Noyanov

// The 26th of Febraury

// Libraries:
import gab.opencv.*;
import java.awt.Rectangle;



void setup(){
  size(800,600);             // Window size
  background(0,100,250);     // Background color
}

void draw(){
  fill(250,0,0);
  line(800/2,0,800/2,600);
  
  line(0,600/2,800,600/2);
  
}
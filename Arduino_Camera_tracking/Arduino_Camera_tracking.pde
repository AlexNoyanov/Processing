//  OpenCV camera tracking project
//  Using Arduino board for servo controlling 

//  By Alex Noyanov

// The 26th of Febraury

// Libraries:
import gab.opencv.*;
import java.awt.Rectangle;
import processing.video.*;

OpenCV opencv;
Rectangle[] faces;
Capture video;

void setup(){
  size(800,600);             // Window size
  background(0,100,250);     // Background color
   
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw(){
  
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  
  fill(250,0,0);
  line(800/2,0,800/2,600);
  
  line(0,600/2,800,600/2);
  
}
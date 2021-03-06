
import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
void setup(){
  
  size(800,600);
  
  String[]  cameras = Capture.list();    // Showing enable camera
  println(cameras[0]);                   // Print first camera settings
  video = new Capture(this,800/2,600/2); // Creating object video like Capture()
  opencv = new OpenCV(this,800/2,600/2); // Object opencv from OpenCV to get images
  
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  // Load cascade for detecting faces
  
  
  video.start();    // Start shooting video from camera 
  
  
}

void draw(){
  
  scale(2);  // What's why all frame sizes in setup is on the half
  opencv.loadImage(video);  // Get image from camera
  
  image(video,0,0);         // Image on the screen is picture from camera
  
  noFill();                 // Don't fill window to make image visible
  
  stroke(0,255,0);          // Green colored stroke
  strokeWeight(3);          // stroke tall is 3
  
  Rectangle[] faces = opencv.detect();  // Array of Rectangle[] is an array of detected faces sizes
  println(faces.length);    // Print detected face length
  
  for(int i = 0; i < faces.length;i++){
    
    ellipse(faces[i].x,faces[i].y,100,100);  // Drawing ellipse
    
   rect(faces[i].x,faces[i].y, faces[i].width, faces[i].height);  // Drawing Rect! 
  }
}



void captureEvent(Capture c) {
  c.read();
}
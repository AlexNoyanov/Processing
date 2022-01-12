import gab.opencv.*;
import processing.video.*;
import java.awt.*;

import java.awt.event.KeyEvent; // imports library for reading the data from the serial port
import java.io.IOException;

Serial myPort; // defines Object Serial

Capture video;
OpenCV opencv;

void setup() {
  size(640, 360);
  String[] cameras = Capture.list();
  
   //myPort = new Serial(this,"COM7", 9600); // starts the serial communication
 myPort = new Serial(this, Serial.list()[7], 9600);
 myPort.bufferUntil('.'); // reads the data from the serial port up to the character '.'. So actually it reads this: angle,distance.
  
  println(cameras[16]);
  video = new Capture(this, 640/2, 360/2, cameras[16]);
  //video = new Capture(this, 640/2, 720/2);
  opencv = new OpenCV(this, 640/2, 360/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() {
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    //println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
}

void captureEvent(Capture c) {
  c.read();
}
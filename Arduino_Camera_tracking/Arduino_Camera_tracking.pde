//  OpenCV camera tracking project
//  Using Arduino board for servo controlling 

//  By Alex Noyanov

// The 26th of Febraury 2018

// Libraries:
import gab.opencv.*;
import java.awt.Rectangle;
import processing.video.*;

// For Arduino:
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

// OpenCV:
OpenCV opencv;
Rectangle[] faces;
Capture video;

void setup(){
  size(800,600);             // Window size
  background(0,100,250);     // Background color
   
     // Prints out the available serial ports.
  println(Arduino.list());
  
  // Modify this line, by changing the "0" to the index of the serial
  // port corresponding to your Arduino board (as it appears in the list
  // printed by the line above).
  arduino = new Arduino(this, Arduino.list()[0], 57600); 
   
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

    // Configure digital pins 8 and 9 to control servo motors.
  arduino.pinMode(8, Arduino.SERVO);
  arduino.pinMode(9, Arduino.SERVO);

  video.start();
}

void draw(){
  
    // Move servo from mouse for testing:
    arduino.servoWrite(7, constrain(mouseX / 2, 0, 180));    
    arduino.servoWrite(4, constrain(180 - mouseX / 2, 0, 180));
  
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );
  
  fill(250,0,0);
  line(800/2,0,800/2,600);
  
  line(0,600/2,800,600/2);
  
  
  // OpenCV video capture:
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
}


void captureEvent(Capture c) {
  c.read();
}
}
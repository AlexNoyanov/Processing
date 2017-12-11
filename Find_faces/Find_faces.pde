import gab.opencv.*;
import java.awt.Rectangle;

OpenCV opencv;
Rectangle[] faces;

void setup() {
  opencv = new OpenCV(this, "image2.jpg");  // Image name
  size(1080, 720);                          // Image size

  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  // Load cascade to detect faces
  faces = opencv.detect();                         // faces is opencv.detect function
}

void draw() {
  image(opencv.getInput(), 0, 0);  // Print image on the screen

  noFill();                        // Don't fill screen to make it visible
  stroke(0, 255, 0);               // Create green stroke
  strokeWeight(3);                  // Stroke weight
  for (int i = 0; i < faces.length; i++) {
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);  // Draw rect around the face
  }
}
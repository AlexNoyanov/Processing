//   Star detecting on the image:
/*
    o Searching for objects on the night sky
    o Giving each one of them the name
    o Finding the biggest one 
    o Generating the top layer with all data
  
*/
//   Created by Alexander Noyanov: @AlexNoyanov

import blobDetection.*;

BlobDetection theBlobDetection;
//PGraphics img;
PImage img;    // Declare variable "a" of type PImage

PGraphics starLayer;

void setup()
{
  // Works with Processing 1.5
  // img = createGraphics(640, 480,P2D);

  // Works with Processing 2.0b3
 // img = createGraphics(640, 480);
  //img = loadImage("stars.gif");  // Load the image into the program  
  img = loadImage("1-meteor.jpg");  // Load the image into the program 

  
  //img.beginDraw();
  //img.background(255);
  //img.noStroke();
  //img.fill(0);
  //for (int i=0;i<20;i++) {
  //  float r = random(50);
  //  img.ellipse(random(img.width), random(img.height), r, r);
  //}
  //img.endDraw();

  theBlobDetection = new BlobDetection(img.width, img.height);
  theBlobDetection.setPosDiscrimination(false);
  theBlobDetection.setThreshold(0.38f);
  theBlobDetection.computeBlobs(img.pixels);

  // Size of applet
  size(800, 600);
  image(img, 0, 0, width, height);
  detectStart(true, true);
}

void draw()
{
  //image(img, 0, 0, width, height);
  //detectStart(true, true);
}

// ==================================================
// To detect all objects in the night sky
// ==================================================
void detectStart(boolean drawBlobs, boolean drawEdges)
{
  int starNumber = 0;
  int maxW = 1;
  int maxH = 1;
  noFill();
  Blob b;
  EdgeVertex eA, eB;
  for (int n=0 ; n<theBlobDetection.getBlobNb() ; n++)
  {
    b=theBlobDetection.getBlob(n);
    if (b!=null)
    {
      // Blobs
      if (drawBlobs)
      {
        strokeWeight(2);
        stroke(0, 255, 0);
        for (int m=0;m<b.getEdgeNb();m++)
        {
          eA = b.getEdgeVertexA(m);
          eB = b.getEdgeVertexB(m);
          if (eA !=null && eB !=null)
            line(
            eA.x*width, eA.y*height, 
            eB.x*width, eB.y*height
              );
        }
      }

      // Edges
      if (drawEdges)
      {
        strokeWeight(1);
        stroke(255, 0, 0);
        rect(
        b.xMin*width, b.yMin*height, 
        b.w*width, b.h*height
          );
          textSize(16);
          // Finding big objects:
          if(b.w*width - b.xMin*width >= maxW || b.h*height - b.yMin*height >= maxH){
             textSize(20);
             text("ASTEROID",b.xMin*width,b.yMin*height);
            }else{  
              text(starNumber,b.xMin*width,b.yMin*height);
            }
          starNumber++;
      }
    }
  }
}

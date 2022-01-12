//
//    Program Print graph with scale from
//    Arduino
//    Use arduino graph in examples (Communication->Graph)
//    Alex Noyanov Project 
//    8 December 2015
//
//  Get serial librarie 
import processing.serial.*;

PFont f;

Serial myPort;        // The serial port
int xPos = 1;         // horizontal position of the graph
float inByte = 0;

void setup(){
    // set the window size:
  size(600, 400);

// Text part
  // Create the font
  printArray(PFont.list());
  //f = createFont("SourceCodePro-Regular.ttf", 24);
  //textFont(f);

  // List all the available serial ports
  // if using Processing 2.1 or later, use Serial.printArray()
  println(Serial.list());

  // I know that the first port in the serial list on my mac
  // is always my  Arduino, so I open Serial.list()[0].
  // Open whatever port is the one you're using.
  myPort = new Serial(this, Serial.list()[6], 9600);

  // don't generate a serialEvent() unless you get a newline character:
  myPort.bufferUntil('\n');

  // set inital background:
  background(100,500);
}
//  Drawing function:
void draw () {
  // draw the line:
   textAlign(LEFT);
  drawType(width * 0.5);
  
  stroke(300, 100, 800);
  line(xPos, height, xPos, height - inByte);
  // 300 100 800
  stroke(60, 100, 265);
  line(xPos, height, xPos, height - inByte+5);

  // at the edge of the screen, go back to the beginning:
  if (xPos >= width) {
    xPos = 0;
    background(0);
  } else {
    // increment the horizontal position:
    xPos += 1;
  }
}

// Function getting data from serial port:
void serialEvent (Serial myPort) {
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // convert to an int and map to the screen height:
    inByte = float(inString);
    println(inByte);
    inByte = map(inByte, 0, 1023, 0, height);
  }
}
// Text draw function:
void drawType(float x) {
  line(x, 0, x, 65);
  line(x, 220, x, height);
  fill(0);
  text("1", x, 150);

}
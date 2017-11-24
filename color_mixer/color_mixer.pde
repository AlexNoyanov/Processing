// This program is beauterful color mixer
// Move mouse and change colors!

// Added color number printing by AlexPC#2

// Now letters "RED","GREEN" and "BLUE" equal the color intensivity

// Contacts: alex.noyanov@gmail.com

PFont f;  // F is text font

void setup() {
  
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  
  fill(255);                       // Fill text with white color
  textFont(f,36);                  // Specify the font using textFont()
  
  size(800, 600); 
  background(100);
}

void draw() {

    // Static text:
    fill(mouseX-200,0,0);
  text("RED",10,100);
 
    fill(0,mouseY-200,0);
  text("GREEN",10,200);

    fill(0,0,mouseX+mouseY-400);
  text("BLUE",10,300);
      
      // Values:  
   // text(mouseX-200,10,100);
   // text(mouseX+mouseY-400,360,300);
   // text( mouseY-200,250,200);
  
  ellipse(400, 300, 400, 400);      // Drawing circle
  if (mouseX > 200 && mouseX < 600) {
    if (mouseY> 100 && mouseY < 500) {
      fill(mouseX-200, mouseY-200, mouseX+mouseY-400);
    }
  }
}
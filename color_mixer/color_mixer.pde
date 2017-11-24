// This program is beauterful color mixer
// Move mouse and change colors!

// Added color number printing by AlexPC#2

PFont f;  // F is text font

void setup() {
  
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  
  size(800, 600); 
  background(100);
}

void draw() {
  ellipse(400, 300, 400, 400);
  if (mouseX > 200 && mouseX < 600) {
    if (mouseY> 100 && mouseY < 500) {
      fill(mouseX-200, mouseY-200, mouseX+mouseY-400);
    }
  }
}
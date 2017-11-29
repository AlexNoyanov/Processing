
// Processeing 2D Bomber Game 
// By Alex Noyanov

// This project is under MIT License

// mail: alex.noyanov@gmail.com


void drawBomb(int x,int y){    // Function for drawing beauterful bomb!
  
  ellipse(x,y,20,100);
  line(x+10,y+30,x+10+10,y+30+10);
    line(x-10,y+30,x-10-10,y+30+10);
    
    triangle(x+10,y+30,x+10+10,y+30+10,x+10,y+30+10);
    
    triangle(x-10,y+30,x-10-10,y+30+10,x-10,y+30+10);
}

// Class Bomber
  class Bomber{
  //int xPos,yPos;
  void position(int xPos, int yPos){
    ellipse(xPos,yPos,10,10);
    
    
    }
  }
  
 Bomber myBomber;
  
void setup()
{
  
  size(800,600);
 // Bomber1 = new Bomber();
 
}

void draw()
{
   background(100);  // Background color is grey
   //myBomber.position(10,10);
   drawBomb(mouseX,mouseY);
  
}
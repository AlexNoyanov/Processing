
// Processeing 2D Bomber Game 
// By Alex Noyanov

// This project is under MIT License

// mail: alex.noyanov@gmail.com


void drawBomb(int x,int y,int scale ){    // Function for drawing beauterful bomb!
  
  ellipse(x,y,20+scale,100+scale);    // Bomb body
  //line(x+10,y+30,x+10+10+scale,y+30+10+scale);
  //line(x-10,y+30,x-10-10-scale,y+30+10+scale);
    
    //triangle(x+10,y+30,x+10+10,y+30+10,x+10,y+30+10);
    triangle(x+10+scale,y+30+scale, x+10+10+scale,y+30+10+scale,x+10+scale,y+30+10+scale); // Left wing 
    
    //triangle(x-10,y+30,x-10-10,y+30+10,x-10,y+30+10);
    traingle(x-10-scale,y+30+scale,x-10-10-scale,y+30+10+scale,x-10-scale,y+30+10+scale); // Right wing
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
   drawBomb(mouseX,mouseY,100);
  
}

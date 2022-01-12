// Lesson1

// integers:
static int sizeX = 500;
static int sizeY = 500;
int green;
int blue;
int red;
// 
float xProcent;
float yProcent;
void setup() {
    size(400, 400);
    stroke(255);

   }
 
void draw() {
    //line(150, 25, mouseX, mouseY);
    xProcent = map(mouseY,0,width,0,255);
    yProcent = map(mouseY,0,height,0,255);
        background(0, 0, 0);
        // Drawing and filling big ellipse:
        fill(mouseX,mouseY,mouseX+mouseY);
        ellipse(200,200,250,250);
        
        fill(0,mouseX,0);
        ellipse(mouseX, mouseY, 50, 50);
   }
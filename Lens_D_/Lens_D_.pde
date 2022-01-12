
//  1   1    1
//  - = - -  -
//  F   d    f


//      d*F
// f =  --
//      d+F

// Program optical lens simulator

float F = 100;
float f;
float ff;
float d;
float lensH = 150;
float lensL = 400;
float h = 100;
float H = 10;
float fx, fy;
float dx, dy;
// Text font:
 PFont font;

void drawLens(){
  fill(0);      // Lens color 
  line(width/2,height/2,width/2,height/2-lensH);  // Drawing lens 
  line(width/2,height/2,width/2,height/2+lensH);
  
  line(width/2,height/2+lensH,width/2-20,height/2+lensH-20);  // Lens down lines
  line(width/2,height/2+lensH,width/2+20,height/2+lensH-20);
  
  line(width/2,height/2-lensH,width/2-20,height/2-lensH+20);    // Lens up lines 
  line(width/2,height/2-lensH,width/2+20,height/2-lensH+20);    
  
  line(width/2,height/2,width/2+lensL,height/2);
  line(width/2,height/2,width/2-lensL,height/2);  
  
  line(width/2-F,height/2,width/2-F,height/2-10);  // Drawing Focus  
  line(width/2-F,height/2,width/2-F,height/2+10);
       fill(0);
       text("F",width/2-F-10,height/2+35,width/2-F);
  line(width/2+F,height/2,width/2+F,height/2-10);  // Drawing Focus  
  line(width/2+F,height/2,width/2+F,height/2+10);
       fill(0);
       text("2F",width/2-2*F-10,height/2+35,width/2-2*F);
  line(width/2-2*F,height/2,width/2-2*F,height/2-10);  // Drawing Focus  
  line(width/2-2*F,height/2,width/2-2*F,height/2+10);
   text("F",width/2+F-10,height/2+35,width/2+F);
   
  line(width/2+2*F,height/2,width/2+2*F,height/2-10);  // Drawing Focus  
  line(width/2+2*F,height/2,width/2+2*F,height/2+10);
  text("2F",width/2+2*F-10,height/2+35,width/2+2*F);
}

void setup(){
  size(800,600);
  background(255);
  
   font = createFont("Arial",30,true); // Text style
      textFont(font);  
}

void draw(){
  background(255);
  drawLens();
  d = width/2 - mouseX;
  if(F-d!=0 && d > 0 &&(width/2-d)-F!=0)
  {
    //f = 1 / (1 / F - 1 / d);
    f = F*d/(d-F);
    H = h*f / d;
    dx = width/2 - d;
    dy = height/2 - h;
    fx = width/2 + f;
    fy = height/2 + H;
    line(dx, height/2, dx, dy);
    line(dx, dy, fx, fy);
    line(fx, height/2, fx, fy);
   }
  
}
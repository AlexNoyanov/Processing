
 void drawCircle(int r,int x, int y){
  //fill(10);
      fill(x,y,r);
  ellipse(x,y,r,r);
  if(r > 1){
    drawCircle(r-10, x+2*r,y+2*r);
      drawCircle(r-10, x-2*r,y-2*r);
  }
}

void setup(){
 size(800,600);
 //background(100);
}

void draw(){
  drawCircle(100,400,300);
  //drawCircle(mouseX,mouseY,mouseX+mouseY);
}

int x = 200;
int y = 200;
int p = 100;
int h = 50;

void drawBlock(int x , int y){
  rect(x,y,x+h,y+h);
  fill(0,200,0);
  rect(x+30,y+30,x+h+30,y+h+30);
  fill(0,128,0);
  line(x,y,x+30,y+30);
  line(x+200+p,y,mouseX,mouseY);
}

void setup(){
 size(800,600); 
 background(0,0,128);
}

void draw(){

drawBlock(x,y);

//line();
}
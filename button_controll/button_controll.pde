// Buttons controlled game test #1
// By Alexander Noyanov


int x = 10;
int y = 20;
int step = 30;

// Green block drawing
void blockGreen(int x,int y){
      fill(0,200,0);
      rect(x,y,step,step);
      fill(0,100,0);
      rect(x+5,y+5,step-10,step-10);
      fill(0,50,0);
      rect(x+10,y+10,step-20,step-20);
}

void setup(){
  size(600,300);
}

void draw(){
  
  background(0);
  fill(200,200,200);
  ellipse(x,y,30,30);
  if(key == 'w'){
    key = '1';

  }else
  if(key=='d'){
    key = '1';
    x = x+step;
  }
  
}
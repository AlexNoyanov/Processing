int step = 30;
int x = 10;
int y = 100;

// Drawing Block:
void blockGreen(int x,int y){
      fill(0,200,0);
      rect(x,y,step,step,5);
      fill(0,100,0);
      rect(x+5,y+5,step-10,step-10);
      fill(0,50,0);
      rect(x+10,y+10,step-20,step-20);
}

void blockStone(int x,int y){
      fill(100,100,100);
      rect(x,y,step,step);
      fill(150,150,150);
      rect(x+5,y+5,step-10,step-10);
      fill(50,50,50);
      rect(x+10,y+10,step-20,step-20);
}

void Player(int x,int y){
  fill(250,0,100);
  ellipse(x,y,step,step);
}

void setup(){
  size(600,300);
  background(255);
 //or(int x=0;x<=width;x = x+step){a
  // blockGreen(x,10);
 //}
}

void draw()
{
    background(0,200,255);
    Player(x,y);
    
   for(int x=0;x<=width;x = x+step){
   blockGreen(x,y+step/2);
 }
    
    // Key controll:
    if(key == 'd'){
     key = '1';
     x = x+step/2;
    }
    
     if(key == 'a'){
     key = '1';
     x = x-step/2;
    }
    // Jump:
    if(key == 'w'){

      for(int i = 0;i<=step;i++){
            background(0,200,255);
            Player(x,y-i);
            //delay(1);
      }
        for(int i = step;i>=0;i--){
            background(0,200,255);
            Player(x,y-step+i);
            //   delay(1);
      }
            key = '1';
    }
  /*
    background(255);
     for(int x = 300; x>=0 ;x = x-step){
   blockStone(x,mouseY); 
  }
  */
 // block(mouseX,mouseY);
  /*
  for(int y = 0; y <= 300; y+=step) {
  for(int x = 0; x <= 600; x+=step) {
      
  }
  }*/
  
  
  //for(int x = 0; x <=600;x=x+step){
  //  //line(x,0,x,300);
  //  fill(0,200,0);
  //  rect(x,step,step,step);
  //  fill(0,100,0);
  //  rect(x+5,step+5,step-5,step-5);
  //  fill(0,0,200);
  //  rect(x,step,step,2*step);
  //}
  //for(int y=0;y<=300;y = y+step){
  //////   fill(0,200,0);
  ////// rect(step,y,step,step);
  //     line(0,y,600,y); 
  //}
}
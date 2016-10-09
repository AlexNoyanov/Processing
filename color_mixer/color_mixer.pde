
void setup(){
 size(800,600); 
 background(100);
}

void draw(){
  ellipse(400,300,400,400);
  if(mouseX > 200 && mouseX < 600){
   if(mouseY> 100 && mouseY < 500){
     fill(mouseX-200,mouseY-200,mouseX+mouseY-400);
    }
  }
}
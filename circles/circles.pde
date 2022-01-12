//PFont f;

// Text font:
 PFont font;

void setup(){
size(512,256); 

// printArray(PFont.list());
// f = createFont("SourceCodPro-Regular.ttf",24);
///textFont(f);
  font = createFont("Arial",30,true); // Text style
      textFont(font);  
}

void draw(){
  
 // textAlign(CENTER);
 //drawType(width * 1);
  
  background(100);
  
  //text(mouseX,width/2+100,height/2+100,width/2);
  //text(mouseY,width/2,height/2+100,width/2);
  fill(mouseX,mouseY,255);
  for(int i = 0; i< 512;i = i + 100){
  ellipse(i,100,50,50);
  }
  
}

/*
void drawType(float x){
    line(x,0,x,65);
    line(x,220,x,height);
    fill(0);
    text(mouseX,x,100);
}*/
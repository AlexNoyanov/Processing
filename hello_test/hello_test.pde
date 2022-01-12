PFont f;

void setup(){
 size(1000,800); 
 printArray(PFont.list());
 f = createFont("SourceCodPro-Regular.ttf",24);
textFont(f);
}

void draw(){
 background(100);
 textAlign(CENTER);
 drawType(width * 1);
}
  void drawType(float x){
    line(x,0,x,65);
    line(x,220,x,height);
    fill(0);
    text("Hello world!",x,100);
}


void setup(){
 size(800,600); 
}

void draw(){
  // Blue gradient:
  for(int ix = 0;ix<=800;ix=ix+5){
    fill(ix/4,ix/2,ix);
    rect(ix,0,5,800);
  }
}
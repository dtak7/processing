int dist=150;
void setup(){
size(600,600);
ellipseMode(LEFT);
}
void draw(){
  background(60,80,123);
  fill (255,255,255);
ellipse (50,30,90,30);
ellipse (50+dist,30,90,30);
fill (30,30,180);
if (mouseX<50){ 
  mouseX=50;
}
if(mouseX>130){
 mouseX=130; 
}

ellipse (mouseX,40,10,10);
ellipse (mouseX+dist,40,10,10);
}

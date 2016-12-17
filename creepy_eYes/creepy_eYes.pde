void setup() {size(600,600);
}
void draw(){
  PImage face = loadImage("dogface.jpg");
  image (face, 0, 0);
  fill(1,80,220);
  ellipse (150,150, 90, 50);
  ellipse (350,150,90,50);
  fill(60,180,224);
if (mousePressed) fill(mouseX,mouseY,60); 
  ellipse (150,150,60,20);
  ellipse (350,150,60,20);
 if (mousePressed)
  fill (1,1,1);
  ellipse (150,150,10,5);
  ellipse (350,150,10,5);
  

}

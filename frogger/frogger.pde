int frogx;
int frogy;
void setup(){
 size(500,500); 
}

void draw(){
  background(50,255,215);
  fill(0,254,0);
  ellipse(frogx,frogy,30,30);
  
  if(frogx==0||frogx==500||frogy==0||frogy==500){
 frogx=250;
 frogy=400;
}
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      frogy-=5;
      }
      else if(keyCode == DOWN)
      {
        frogy+=5;
      }
      else if(keyCode == RIGHT)
      {
      frogx+=5;
      }
      else if(keyCode == LEFT)
      {
        frogx-=5;
      }
   }
}
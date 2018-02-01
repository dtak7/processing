int frogx;
int frogy;
Car car1;
Car car2;
Car car3;
void setup(){
 size(500,500); 
 car1=new Car(45,145,102,50,2);
 car2=new Car(0,70,40,10,4.9);
 car3=new Car(400,401,1,1,1.2);

}

void draw(){
  background(50,255,215);
   fill(10,10,255);
 rect(0,400,500,5000);
  fill(0,254,0);
  ellipse(frogx,frogy,30,30);
   car1.move();
   car2.move();
   car3.move();
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

 class Car{
   float carX;
  float carY;
  int carWidth;
  int carLength;
  float carSpeed=5;
  
  Car(float carX,float carY,int carWidth,int carLength,float carSpeed){
    this.carX=carX;
    this.carY=carY;
    this.carWidth=carWidth;
    this.carLength=carLength;
    this.carSpeed=carSpeed;
  }
  float getCarX(){
 return carX;
}
void move(){
  carX+=carSpeed;
  rect(carX,carY,carWidth,carLength,carSpeed);
  if(carX>500){
   carX=0; 
  }
}
}
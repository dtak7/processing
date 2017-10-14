int speedx=5;
 int x=0;
 int y=300;
 int speedy=5;
 int rectx=20;
 void setup(){
   size(700,700);
 }
 
 void draw(){
   background(170,0,255);
     ellipse(x,y,50,50);
     fill(204,0,0);
     stroke(1,1,1);
    
      x=x+speedx;
      y=y+speedy;
     if(x>=700){
      speedx=-speedx;
     }
     if(x<=25){
      speedx++; 
     }
     if(y>=700){
      speedy=-speedy; 
     }
     if(y<=25){
      speedy++; 
     }
     
     rect(mouseX,620,150,25);
     if(intersects(x,y,mouseX,620,150)){
        speedy=-speedy; 
     }
     
     for(int i=0;i<5;i++){
     rect(rectx+i*170,35,150,50);
    
     }
      if(intersects(x,y,rectx=x*170,35,50)){
        speedy++; 
     }
 }
 boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}
import java.awt.Font;

PFont fo;
PFont lose;
int birdy = 0;
int pipe1X = 0;
int randomLength;
int birdx=100;
int pipe1Y =0;
int pipe2X=0;
int pipe2Y=450;
int points=0;

void setup() {
  size(700, 700);
  points=0;
   fo=createFont("Menlo.ttc",30);
   lose=createFont("SignPainter.otf",200);
}

void draw() {
  background(0, 255, 255); 
  textFont(fo);
  if (mousePressed) {
    birdy=birdy-12;
  }
  birdy=birdy+7; 
  pipe1X = pipe1X-4;
  pipe2X=pipe2X-4;
  fill(255, 240, 0);
  ellipse(birdx, birdy, 30, 30);
  fill(0, 225, 100);
  rect(pipe1X, pipe1Y, 50, randomLength);
  if (pipe1X<=1) {
    randomLength = (int) random(100, 400);
    pipe1X=700;
    points++;
    fill(1,1,1);
    text(points,30,30);
  }
  fill(1,1,1);
    text(points,30,30);
  fill(0,255,100);
  rect(pipe2X,randomLength+200,50,randomLength+500);
    if(pipe2X<=1){
       randomLength = (int) random(100, 400);
    pipe2X=700;
    }
  //intersects(birdx,birdy,pipe1X,randomLength,50);
//intersects2(birdx,birdy,pipe2X,randomLength+200,50);
  if(intersects(birdx,birdy,pipe1X,randomLength,50)){
    textFont(lose);
    fill(185,15,15);
    text("YOU \n LOSE",150,350);
    println("top pipe");
    stop(); 
  }
     if(intersects2(birdx,birdy,pipe1X,randomLength+200,50)){
    textFont(lose);
    fill(185,15,15);
    text("YOU \n LOSE",150,350);
    println("bottom pipe");
    stop();  }
}


boolean intersects(int birdx, int birdy, int pipe1X, int pipe1Y, int randomLength) {
  if (birdy < pipe1Y  && birdx >= pipe1X && birdx < pipe1X + randomLength){
  
    
    return true;
  }
  else {
  return false;
}
}


boolean intersects2(int birdx, int birdy, int pipe2X, int pipe2Y, int randomLength) {
  if (birdy > pipe2Y - 4 && birdx >= pipe2X && birdx < pipe2X + randomLength){
    
    return true;
  }
  else {
  return false;
}
}
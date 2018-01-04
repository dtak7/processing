int birdy = 0;
int pipe1X = 0;
int randomLength= (int)random(100, 400);
int birdx=100;
int pipe1Y =0;
void setup() {
  size(700, 700);
}

void draw() {
  background(0, 255, 255); 
  if (mousePressed) {
    birdy=birdy-5;
  }{}
  birdy=birdy+3; 
  pipe1X = pipe1X-4;
  fill(255, 240, 0);
  ellipse(birdx, birdy, 50, 50);
  //makePipe();  
  fill(0, 225, 100);
  rect(pipe1X, pipe1Y, 50, randomLength);
  if (pipe1X<=0) {
    randomLength = (int) random(100, 400);
    pipe1X=700;
  }
}




boolean intersects(int birdx, int birdy, int pipe1X, int pipe1Y, int randomlength) {
  if (birdy > pipe1Y - 4 && birdx > pipe1X && birdx < pipe1X + randomLength)
    return true;
  else 
  return false;
}
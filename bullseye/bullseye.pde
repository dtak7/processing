
int x=0;

void setup(){size(600,600);


}

void draw(){
x=x+0;
 for(int a=0;a<10;a++){

   if(a%2==0){
  if (mousePressed){ 
  fill  (mouseX,mouseY,60);
  ellipse(200,200,400-a*40,400-a*40);

}}

  
  else {
    fill(1,1,1);}
    ellipse(200,200,400-a*40,400-a*40);
  if (mousePressed){
     x=x+1;
 ellipse(x,150,20,9);
  }

}}
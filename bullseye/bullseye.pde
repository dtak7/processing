void setup(){size(600,600);
}
void draw(){
 for(int a=0;a<10;a++){
   if(a%2==0){
 fill(178,34,34);}
  else{
    fill(1,1,1);
  }
   ellipse(200,200,400-a*40,400-a*40);
 
}}

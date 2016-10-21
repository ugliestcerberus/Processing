import ddf.minim.*;  
int x= 50;
int y=10;
int score=0;
void setup(){
 size(1000, 600);
 minim = new Minim (this);
 sound = minim.loadSample("BD.wav", 128);
}
void draw(){
  background(100,100,100);
  fill(0,0,300);
  stroke(100,200,300);
  y++; 
 y++;
y++; 
fill(0,0,300);
textSize(16);
text("Score: " + score, 20, 20);
textSize(20);  
if(score>=20){
  text("Game Over",175,175);
}
else{
  ellipse(x,y,50,50);
}
  if(y>=600){
    checkCatch(x);
    y=10;
    x=  (int) random(1000);
  }
  rect(mouseX,580,100,20);
}
  void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score++;
println("Your score is now: " + score);
}


 

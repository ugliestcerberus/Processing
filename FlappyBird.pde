int x= 100;
int y= 100;
int pipeX= 0;
int pipeY= 100; 
int pipeR= 700;
int birdwidth= 12;
int birdheight=50;
int random= (int) random(100,400); 
double birdYVelocity= 5;
double gravity= 0.5;
boolean hit= false;
void setup(){
size(1000,1000);
}
void draw(){
background(76,45,76);
fill(100,100,100);
ellipse(x,y+=birdYVelocity+gravity,birdwidth,birdheight);
rect(pipeX,pipeY,50,400);
fill(120,100,2);
rect(pipeX,600,50,400);
rect(100,1000,150,50);
if(mousePressed){
mousePressed();
} 
if(pipeX==0){
 pipeX=width; 
}
pipeX-=10;
hit= intersects(x,y,pipeX,pipeY,50);
if(hit){
  exit();
}
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}
void mousePressed(){
birdYVelocity-=2;
}

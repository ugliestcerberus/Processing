int x= 100;
int y= 100;
int pipeX= 0;
int birdwidth= 12;
int birdheight=50;
int random= (int) random(100,400); 
double birdYVelocity= 5;
double gravity= 0.5;
void setup(){
size(1000,1000);
}
void draw(){
background(76,45,76);
fill(100,100,100);
ellipse(x,y+=birdYVelocity+gravity,birdwidth,birdheight);
rect(pipeX,100,50,400);
if(mousePressed){
mousePressed();
} 
if(pipeX==0){
 pipeX=width; 
}
pipeX-=10;
}
void mousePressed(){
birdYVelocity-=2;
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}

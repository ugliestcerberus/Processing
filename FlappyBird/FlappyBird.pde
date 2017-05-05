int x= 10;
int y= 18;
double birdYVelocity= 2;
double gravity= 0.5;
void setup(){
size(1000,1000);
}
void draw(){
background(76,45,76);
fill(189,200,124);
ellipse(x,y+=birdYVelocity+gravity,50,50);
mousePressed();
}
void mousePressed(){
}

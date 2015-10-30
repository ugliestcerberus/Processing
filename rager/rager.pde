

void setup(){
  size(500,1001);
 PImage face = loadImage("the rager.png");
  image(face, 0, 0);
}
void draw(){
  fill(128,mouseX,128);
 ellipse(90,59,10,10);
 fill(128,mouseY,128);
 ellipse(110,50,10,10);
 fill(0,0,0);
 ellipse(90,60,5,5);
 fill(0,0,0);
 ellipse(110,50,5,5);
 
  
}

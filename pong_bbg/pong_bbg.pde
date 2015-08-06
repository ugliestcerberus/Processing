import ddf.minim.*;
int xpos=175; 
int xspeed=30;
int ypos=101;
int yspeed=30;
Minim minim;
AudioSample sound;
PImage backgroundImage;
void setup()
{ size(1000,1000);
minim = new Minim (this);
//sound = minim.loadSample("Creepy.wav", 128);//}
backgroundImage = loadImage("BBGLogo.png");

}

void draw()
{ background(136,170,85);
image(backgroundImage, 0, 0, width, height);
fill(150,150,150);
ellipse(xpos,ypos,78,67);
stroke(100,100,100);
xpos=xpos+xspeed;  
if(xpos>=1000){
xspeed=-xspeed;}
if(xpos<=0){
xspeed=-xspeed;
}
ypos=ypos+yspeed;
if(ypos>=1000){
yspeed=-yspeed;}
if(xpos<=0){
yspeed=-yspeed;}


rect(mouseX, 71, 100, 20);}

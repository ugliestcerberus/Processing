import ddf.minim.*;
AudioSample sound;
void setup(){
  size(500,500);
  fill(238,170,34);
  ellipse(250,250,300,300);
  fill(238,0,34);
  ellipse(250,250,250,250);
  fill(238,255,34);
  ellipse(250,250,200,200);
  Minim minim = new Minim(this);
  sound = minim.loadSample("kitten-1.wav");  
}

void draw(){
  PImage pepperoni = loadImage("you are a meat eater.gif");
  image(pepperoni,275,275);
  image(pepperoni,260,260);
  image(pepperoni,205,225);
  if(mousePressed){
  image(pepperoni,mouseX,mouseY);
  sound.trigger();  
  
  }

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}


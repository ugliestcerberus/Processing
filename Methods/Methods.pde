int x= 10;
int y= 15;
void setup(){
background(200,100,200); 
size(800,800);
}
void draw(){
ellipse(x+=20,y+=20,10,10);
x=random(100);
y=random(100);
}  


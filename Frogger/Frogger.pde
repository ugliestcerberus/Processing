Car Matthew= new Car(200,250,100,5);
Car Lamborgini= new Car(100,175,100,10);
Car Mustang= new Car(50,50,100,-10);
int x=200;
int y=350;
void draw (){
  background(119,0,119);
  fill(255,255,0);
  ellipse(x,y,50,50);
  OutofBounds();
  Matthew.display();
  Mustang.display();
  Lamborgini.display();
  Matthew.move();
  Mustang.move();
  Lamborgini.move();
  
  if(intersects(Mustang)||intersects(Lamborgini)||intersects(Matthew)){
    y=350;
}
}
void setup (){
  size(400,400);
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      y-=12;
      }
      else if(keyCode == DOWN)
      {
      y+=12; 
      }
      else if(keyCode == RIGHT)
      {
       x+=12; 
      }
      else if(keyCode == LEFT)
      {
        x-=12;
      }
   }
}
void OutofBounds(){
  if(y>350){
   y=350;
   println(" Get back in the game!"); 
  }
  if(x>350){
    x=350;
   println(" Get in the game boundary!"); 
}
if(x<0){
    x=0;
   println(" Get in the game territory!"); 
}
if(y<0){
    y=0;
   println(" Get in the game area!"); 
}
}
boolean intersects(Car car) {
if ((y > car.getY() && y < car.getY()+50) && (x > car.getX() && x < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}
public class Car{
 int size ;
 int speed  ;
 int x  ;
 int y  ;
 int getX(){
   return x;
 }
 int getY(){
   return y;
 }
 int getSize(){
   return size;
 }
 Car(int x, int y, int size, int speed){
 this.x=x;
 this.y=y;
 this.size=size;
 this.speed=speed;
}
  void display() {
    fill(0,255,0);
    rect(x,y,size,50);
      }
   void move() {
     x-=speed;
     if(x<0){
       x=375;
     }
     if(x>375){
       x=0;
     }
   }
}







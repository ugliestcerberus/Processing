int x=200;
int y=350;
void draw (){
  background(119,0,119);
  fill(255,255,0);
  ellipse(x,y,50,50);
  OutofBounds();
}
void setup (){
  size(400,400);
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      y-=3;
      }
      else if(keyCode == DOWN)
      {
      y+=3; 
      }
      else if(keyCode == RIGHT)
      {
       x+=3; 
      }
      else if(keyCode == LEFT)
      {
        x-=3;
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
public class Car{
 int size ;
 int speed  ;
 int x  ;
 int y  ;
 Car( );
}


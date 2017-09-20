Bacteria [] colony = new Bacteria[5]; 
void setup()   
{     
  size(500, 500);
  final int myX, myY;
}   
void draw()   
{    
  background(255);
  
}  
class Bacteria  
{     
  int myX, myY;
  Bacteria(int x, int y)
  {
  myX = x;
  myY = y;
  }
}
void walk() {
  for(int x = 250; x<500&&x>0;){
  x = x+(int)(Math.random()*5)-2;
  }
  for(int y = 250; y<500&&y>0;){
  y = y+(int)(Math.random()*5)-2;
  }
  ellipse(myX, y, 10, 10);
}

void show() {
  fill(0);
  
}    

/*Bacteria [] colony = new Bacteria[5];
 void setup{
 
 
 }
 for(int i = 0; i < colony.length; i++){
 colony[i] = new Bacteria(i);
 }
 for(int i = 0; i < colony.length; i++){
 colony.walk();
 colony.show();
 }
 class Bacteria
 {
 int myX, myY;
 Bacteria()
 {
 myX = 250;
 myY = 250;
 }
 void walk(){
 myX = myX+(int)(Math.random()*5)-2;
 myY = myY+(int)(Math.random()*5)-2;
 }
 void show(){
 fill(0);
 ellipse(myX, myY, 10, 10);
 }
 }*/
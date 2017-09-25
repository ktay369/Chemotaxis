Bacteria [] colony = new Bacteria[5]; 
Bacteria bob = new Bacteria(50, 50);
void setup()   
{     
  size(500, 500);
  colony = 10;
  for(int i = 0; i < colony
}   
void draw()   
{    
  background(255);

  bob.show();
  bob.move();
}  
class Bacteria  
{     
  int myX, myY;
  Bacteria(int x, int y)
  {
    myX = x;
   myY = y;
  }

  void move() 
  {
    
      myX = myX+(int)(Math.random()*5)-2;
    
    
      myY = myY+(int)(Math.random()*5)-2;
    
    //fill(0);
    //ellipse(myX, myY, 10, 10);
  }
  void show() {
    fill(0);
    ellipse(myX, myY, 10, 10);
  }
}
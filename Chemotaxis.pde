Bacteria [] colony;
void setup()   
{     
  size(500, 500);
  colony = new Bacteria[10];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(255);
 for (int i = 0; i < colony.length; i++){
 colony[i].move();
  colony[i].show();
 }
}  
class Bacteria  
{     
  int x, y;
  Bacteria()
  {
    x = 250;
   y = 250;
  }

  void move() 
  {
    if (mouseX<x)
      x = x+(int)(Math.random()*2)+1;
      else if(mouseX ==x)
      x+=0;
      else
      x = x+(int)(Math.random()*2)-2;
    
    if(mouseY<y)
      y = y+(int)(Math.random()*2)+1;
      else if(mouseY == y)
      y+=0;
      else
      y = y+(int)(Math.random()*2)-2;
      
      
    
    //fill(0);
    //ellipse(myX, myY, 10, 10);
  }
  void show() {
    fill(0);
    ellipse(x, y, 10, 10);
  }
}
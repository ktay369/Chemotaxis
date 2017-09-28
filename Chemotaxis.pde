Bacteria [] colony;
void setup()   
{     
  size(500, 500);
  colony = new Bacteria[500];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(color(0));
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
    if (mouseX<x&&x<500&&x>0)
      x = x+(int)(Math.random()*2)-2;
      else if(mouseX ==x)
      x+=0;
      else if(x<500&&x>0)
      x = x+(int)(Math.random()*2)+1;
    
    if(mouseY<y&&y<500&&y>0)
      y = y+(int)(Math.random()*2)-2;
      else if(mouseY == y&&y<500&&y>0)
      y+=0;
      else if (y<500&&y>0)
      y = y+(int)(Math.random()*2)+1;
      
      /*if(get(x,y) != color(0))
{
  textSize(50);
  fill(255);
    text("NOM NOM", 200, 250);
}*/
      
      if (mousePressed){
    x = (int)(Math.random()*500)+1;
    y = (int)(Math.random()*500)+1;
      }
    
    

  
      
    
    //fill(0);
    //ellipse(myX, myY, 10, 10);
  }
  void show() {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(x, y, 20, 20);
  }
  
}
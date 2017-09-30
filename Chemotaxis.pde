Bacteria [] colony;
void setup()   
{     
  size(500, 500);
  colony = new Bacteria[100];
  for (int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(color(0));
  fill(250);
  ellipse(250, 250, 500, 500);
  for (int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}  
class Bacteria  
{     
  float x, y;
  Bacteria()
  {
    x = 250;
    y = 250;
  }

  void move() 
  {
    /*if (mouseX<x&&x<=480&&x>=20)
      x = x+((int)(Math.random()*100)+50)/100;
    else if (mouseX ==x)
      x+=0;
    else if (x<=480&&x>=20)
      x = x+((int)(Math.random()*100)-150)/100;

    if (mouseY<y&&y<=480&&y>=20)
      y = y+((int)(Math.random()*100)+50)/100;
    else if (mouseY == y&&y<500&&y>0)
      y+=0;
    else if (y<=480&&y>=20)
      y = y+((int)(Math.random()*100)-150)/100;*/
      
      if (mouseX<x&&(x-250)*(x-250)+(y-250)*(y-250)<62500)
      x = x+((int)(Math.random()*100)+50)/100;
    else if (mouseX ==x)
      x+=0;
    else if ((x-250)*(x-250)+(y-250)*(y-250)<62500)
      x = x+((int)(Math.random()*100)-150)/100;

    if (mouseY<y&&(x-250)*(x-250)+(y-250)*(y-250)<62500)
      y = y+((int)(Math.random()*100)+50)/100;
    else if (mouseY == y)
      y+=0;
    else if ((x-250)*(x-250)+(y-250)*(y-250)<62500)
      y = y+((int)(Math.random()*100)-150)/100;

    /*if(get(x,y) != color(0))
     {
     textSize(50);
     fill(255);
     text("NOM NOM", 200, 250);
     }*/

    if (mousePressed) {
      x = (int)(Math.random()*500)+1;
      y = (int)(Math.random()*500)+1;
    }






    //fill(0);
    //ellipse(myX, myY, 10, 10);
  }
  void show() {
    if((x-250)*(x-250)+(y-250)*(y-250)<62500){
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(x, y, 30, 30);
    }
    else{
      fill(0);
    ellipse(x, y, 30, 30);
    }
  }
}
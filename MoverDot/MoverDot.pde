Mover [] dots;
void setup() {
  size(300, 300);
  background(0);
  dots = new Mover[10];
  for (int i = 0; i < dots.length; i++)
  {
    dots[i] = new Mover();
  }
}
void draw() {
  background(0);
  for (int i = 0; i < dots.length; i++)
  {
    //background(0);
    dots[i].move();
    dots[i].show();
  }
}
class Mover {
  int x, y;
  Mover() {
    if (x==0) {
      y = (int)(Math.random()*300)+1;
    }

    //initialize member var
  }
  void move() {
    x++;
  }
  void show() {
    fill(255);
    ellipse(x, y, 20, 20);
  }
}
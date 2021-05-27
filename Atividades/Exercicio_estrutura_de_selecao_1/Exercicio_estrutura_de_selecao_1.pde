int tam, x, y;

void setup() {
  size(600, 600);
  noStroke();
  ellipseMode(CORNER);
  tam=width/10;
}
void draw() {
  if (keyPressed) {
    x = (int) random(0, 10);
    y = (int) random(0, 10);
    fill(255);
    if (x==0)
      fill(255, 30, 80);
    if (y==0)
      fill(255, 30, 80);
    if (x==9)
      fill(255, 30, 80);
    if (y==9)
      fill(255, 30, 80);
    if (x==1 && y<9 && y>0)
      fill(30, 80, 255);
    if (y==1 && x<9 && x>0)
      fill(30, 80, 255);
    if (x==8 && y<9 && y>0)
      fill(30, 80, 255);
    if (y==8 && x<9 && x>0)
      fill(30, 80, 255);
    if (x==2 && y<8 && y>1)
      fill(80, 255, 30);
    if (y==2 && x<8 && x>1)
      fill(80, 255, 30);
    if (x==7 && y<8 && y>1)
      fill(80, 255, 30);
    if (y==7 && x<8 && x>1)
      fill(80, 255, 30);
    if ( x== 3 && y<7 && y>2)
      fill(80, 100, 30);
    if (y==3 && x<7 && x>2)
      fill(80, 100, 30);
    if (x ==6 && y<7 && y>2)
      fill(80, 100, 30);
    if (y==6 && x<7 && x>2)
      fill(80, 100, 30);
    if (x== 4 && y<6 && y>3)
      fill(100, 40, 30);
    if (y== 4 && x<6 && x>3)
      fill(100, 40, 30);
    if (x==5 && y<6 && y>3)
      fill(100, 40, 30);
    if (y==5 && x<6 && x>3)
      fill(100, 40, 30);
    rect(x*tam, y*tam, tam, tam);
    fill(10,10,10);
    rect(275,275,50,50);
  }
}

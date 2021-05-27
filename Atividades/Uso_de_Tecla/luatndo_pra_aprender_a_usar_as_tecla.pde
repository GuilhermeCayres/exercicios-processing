int tam, x=0, y=0;

void setup() {
  size(600, 600);
  ellipseMode(CORNER);
  tam=width/10;
}
void draw() {



      if (key =='a')
       background(153, 51, 153);
      if (key == 's'){
        fill(100, 100, 255);
      triangle(300, 0, 0, 300, 600, 300);}
      if (key == 'd'){
        fill(100, 100, 255);
      triangle(0, 300, 600, 300, 300, 600);}
      y=y+1;
    }

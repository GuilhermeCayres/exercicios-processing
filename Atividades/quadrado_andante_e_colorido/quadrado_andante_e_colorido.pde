int tam, x=200, y=200, a=200,b=200,g=0,h=0,r=0,j=0,k=0,l=0;

void setup() {
  size(500, 500);
  ellipseMode(CORNER);
  tam=width/10;
  background(0);
}
void draw() {
  if(key == 'd'){
    x++;
    g++;
    r--;
  fill(g,h,r);
  rect(x,y,75,75);}
   if(key == 'a'){
    x--;
    g--;
    r++;
  fill(g,h,r);
  rect(x,y,75,75);}
   if(key == 'w'){
    y--;
    h--;
    r++;
  fill(g,h,r);
  rect(x,y,75,75);}
   if(key == 's'){
    y++;
    h++;
    r--;
  fill(g,h,r);
  rect(x,y,75,75);}
  if(key == '6'){
    a++;
    j++;
    l--;
  fill(j,k,l);
  rect(a,b,75,75);}
   if(key == '4'){
    a--;
    j--;
    l++;
  fill(j,k,l);
  rect(a,b,75,75);}
   if(key == '8'){
    b--;
    k--;
    l++;
  fill(j,k,l);
  rect(a,b,75,75);}
   if(key == '5'){
    b++;
    k++;
    l--;
  fill(j,k,l);
  rect(a,b,75,75);
   }}

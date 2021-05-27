size (500,500);
background (255);
noStroke();
int x=0;
int xi=0;
int xo=50;
int y=0;
int yi=50;
int yo=50;
int a=1;
int b=1;
int c=1;
int d=2;
fill(0);
while (b<=10){
  x=0;
  xi=0;
  xo=50;
  a=1;
  if(c%2!=0){
while(x<=500){
  if(a%2!=0){
triangle(x,y,xi,yi,xo,yo);}
    else{
    triangle(x,y+50,xi,yi-50,xo,yo-50);}

x=x+50;
xi=xi+50;
xo=xo+50;
a=a+1;}}
x=50;
xi=50;
xo=0;
a=1;
if(d%2==0){
while(x<=500){
  if(a%2!=0){
    triangle(x,y+50,xi,yi+50,xo,yo+50);}
    else{
      triangle(x-50,y+50,xi,yi,xo+50,yo+50);}
  x=x+50;
xi=xi+50;
xo=xo+50;
a=a+1;}}
y=y+50;
yi=yi+50;
yo=yo+50;
c=c+1;
d=d+1;
}

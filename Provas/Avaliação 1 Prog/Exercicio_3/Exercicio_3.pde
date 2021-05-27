int a=0,x=0,xi=100,xo=25;

size(500,100);
noStroke();
background(255);

for(a=0;a<10;a++){
fill(225,0,30);
rect(x,0,100,100);
x=x+100;
fill(0,71,171);
quad(xi-50,0,xi-100,50,xi-50,100,xi,50);
xi=xi+100;
fill(225,0,30);
rect(xo,25,50,50);
xo=xo+100;
}

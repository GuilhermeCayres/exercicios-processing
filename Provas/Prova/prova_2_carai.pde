
int [] fruta = new int[20];
int [] teste = new int[20];
int [][] matriz = new int[10][10];
int i, j, a=0, b=0, c=0, d, e=5, f=5,q=0,g=5,h=5,x=2,p,w,l=250,s=250,m=0;
float t=0;


void setup() {
  size(500, 500);
  background(135);
 noStroke();
  for (  i = 0; i< matriz.length; i++) {
    for (  j =0; j< matriz[0].length; j++) {
      matriz[i][j]=a;
      a=a+50;
      if (j==9) {
        a=0;
      }
    }
    b=b+50;
  }
  for(c=0;c<20;c++){
    i=(int) random(1,10);
    j=(int) random(1,10);
    d=i*50;
    fill(225,30,0);
    if(i!=5 && j!= 5){
      m++;
    ellipse(matriz[i][j]+25,d+25,25,25);
    fruta[c]=matriz[i][j]+25;
    teste[c]=d+25;}


  }
}

void draw() {
  for(w=0;w<20;w++){
  if(l == fruta[w] && s ==teste[w]){
    p++;
  fruta[w]=0;
teste[w]=0;}}
if(p<5){
t=t+0.01;}

  fill(135);
rect(0,0,500,50);
fill(255);
if(p==m){
  text("o jogo acabou,voce ganhou!!  voce demorou: ",125,10);}

text(t,390,10);
text("Segundos",435,10);
text("Pontos:",0,10);
text(p,40,10);  
fill(225, 30, 0);
ellipse(matriz[e][f]+25, (e*50)+25, 50, 50);
fill(255);
  l=matriz[e][f]+25;
s=(e*50)+25;
if(x<1){
ellipse(g,h,15,15);}

  
}

void keyPressed() {

  x=0;
  fill(135);
  ellipse(matriz[e][f]+25, (e*50)+25, 52, 52);
  if(p<m){
  if      (keyCode == UP && e>0) { e --; g=matriz[e][f]+25;h=((e*50)+25)-12;}
  else if (keyCode == DOWN && e<9 ){  e ++; g=matriz[e][f]+25;h=((e*50)+25)+12;}
  else if (keyCode == LEFT && f>0 ){  f --; g=(matriz[e][f]+25)-12;h=(e*50)+25;}
  else if (keyCode == RIGHT && f<9){  f ++; g=(matriz[e][f]+25)+12;h=(e*50)+25;}}
}

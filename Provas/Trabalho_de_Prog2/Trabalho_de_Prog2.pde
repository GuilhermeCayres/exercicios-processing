int inimigox [] = new int [5];
int inimigoy [] = new int [5];
int mov=225,ini,tiro=-75,dist,tempo=300,vel,teste,cont,cont2,pont,velini,distini,tempini,velini2,distini2,tempini2=100,t,tiroini,tiorini2,b,a,vel2,vel3,dist2,dist3,temp3=225,temp2=175,posini=350,posini2=450,xini,xini2,cont3,cont4,contador,contador2,posper=675,pont2=0;

void setup(){
  size(500,800);


  inimigox[0]=25;
  inimigox[1]=125;
  inimigox[2]=225;
  inimigox[3]=325;
  inimigox[4]=425;
  inimigoy[0]=200;
  inimigoy[1]=300;
  inimigoy[2]=200;
  inimigoy[3]=400;
  inimigoy[4]=200;
}
void draw(){
  if(pont<=5){
    if(pont2<=0){
    background(0);
    textSize(25);
    fill(0,0,255);
    text("Pontuação: ",50,100);
    text(pont,200,100);
    personagem();
      arma();
  inimigos();
armaini();
armaini2();
  colisao();
}
}
  if(pont>=5){
    textSize(50);
    fill(255,0,0);
    text("FINALIZADO",125,400);}
    if(pont2>0){
    textSize(35);
    fill(100,100,55);
    text("GAME OVER VOCE MORREU",25,400);}
}
void arma(){
  if(cont==1){
    if(tiro<800){
  fill(255);
  rect(ini,tiro,10,25);
   movimento();
 }
 }
 if(tiro>800){
   cont=0;}
}
void armaini(){
  if(contador!=1){
 a++;
     if(a%300==0){
       cont3=1;
       xini=inimigox[1]+10;}
   

     if(cont3==1){

if(posini<800){
   fill(155,100,0);

      rect(xini,posini,10,25);
      movitiro();}
    if(posini>=800){
      cont3=0;
      posini=350;

  }}}}

void movitiro(){
  vel2=2;
  dist2=temp2 * vel2;
  posini=dist2;
  temp2++;
if(posini>=800){
     temp2=175;}}
     
void armaini2(){
  if(contador2!=1){
  b++;
  if(b%300==0){
    cont4=1;
    xini2=inimigox[3]+10;}
    if(cont4==1){
      if(posini2<800){
        fill(155,100,0);
        rect(xini2,posini2,10,25);
        movitiro2();
      }
      if(posini2>=800){
        cont4=0;
        posini2=450;}}}}
        
    
    void movitiro2(){
      vel3=2;
      dist3=temp3 * vel3;
      posini2=dist3;
      temp3++;
      if(posini2>=800){
        temp3=225;}}
      
  
  

void movimento() {
  vel=2;
  dist=tempo * vel;
  tiro = dist;
  tempo--;
}

void personagem(){
  fill(40,125,40);
  rect(mov,posper,25,25);
  
}
void inimigos(){
  for(int a=0;a<5;a++){
  fill(255,0,0);
  rect(inimigox[a],inimigoy[a],50,50);}
  movini();
  movini2();
}
void movini(){
  velini=2;
  distini=tempini * velini;
  inimigox[1] = distini;
  tempini++;
if(inimigox[1]==500){
  tempini = 0;
}}

void movini2(){
  velini2=2;
  distini2=tempini2 * velini2;
  inimigox[3] = distini2;
  tempini2++;
if(inimigox[3]==500){
  tempini2 = 0;
}}
  
void colisao(){
  if(ini>=inimigox[1] && ini<=inimigox[1]+50 && tiro<=inimigoy[1]+50 && tiro>=inimigoy[1]){
    inimigoy[1]=-50;
  tempo=300;
cont=0;
ini=mov+5;
tiro=600;
pont++;
contador=1;}
if(ini>=inimigox[0] && ini<=inimigox[0]+50 && tiro==inimigoy[0]+50){
    inimigoy[0]=-50;
  tempo=300;
cont=0;
ini=mov+5;
tiro=600;
pont++;}
if(ini>=inimigox[2] && ini<=inimigox[2]+50 && tiro==inimigoy[2]+50){
    inimigoy[2]=-50;
  tempo=300;
cont=0;
tiro=600;
pont++;}
if(ini>=inimigox[3] && ini<=inimigox[3]+50 && tiro<=inimigoy[3]+50 && tiro>=inimigoy[3]){
    inimigoy[3]=-50;
  tempo=300;
cont=0;
ini=mov+5;
tiro=600;
pont++;
contador2=1;}
if(ini>=inimigox[4] && ini<=inimigox[4]+50 && tiro==inimigoy[4]+50){
    inimigoy[4]=-50;
  tempo=300;
cont=0;
ini=mov+5;
tiro=600;
pont++;}
if(xini >=mov && xini<=mov+25 && posini+24 >= posper && posini+24<=posper+25){
  posper=850;
posini=350;
temp2=175;
  print("a");
    pont2++;
}
if(xini2 >=mov && xini2<=mov+25 && posini2+24 >= posper && posini2+24<=posper+25){
  posper=850;
posini2=350;
temp3=175;
  print("a");
    pont2++;
}}
    
void keyPressed(){
    if(pont<5){
      if(mov>0){
  if ( keyCode == LEFT) {
      mov=mov-5;
    }}
    if(mov+25<500){
    if ( keyCode == RIGHT) {
      mov=mov+5;
    }}
    if( keyCode == UP){
      cont=1;
    tempo=300;
    ini=mov+5;
  tiro=600;}}
    
}

int mov=620, mov2=620;
int faixax=20, faixay=150, a, b, c, d, carro2=0, carro=0, carro3=0, carro4=0, cont=0, distcarro, distcarro2=535, distcarro3, distcarro4, dist, temp, temp2, vel, posini=0, posini2=535, posini3=0, posini4=535, tempo=300, tempo2, pont=0, colx=120, colx2=360;
void setup() {

  size(580, 650);
  distcarro = posini;
  distcarro2 = posini2;
  distcarro3 = posini3;
  distcarro4 = posini4;
  c= (int) random(1, 4);
  d= (int) random(1, 4);
  if (d==1) {
    carro=365;
    carro4=565;
  }
  if (d==2) {
    carro=415;
    carro4=515;
  }
  if (d==3) {
    carro=465;
    carro4=415;
  }
  if (c==1) {
    carro2=115;
    carro3=265;
  }
  if (c==2) {
    carro2=165;
    carro3=315;
  }
  if (c==3) {
    carro2=215;
    carro3=115;
  }
}

void calcada() {
  fill(175);
  stroke(0);
  line(0, 49, 580, 49);
  line(0, 609, 580, 609);
  line(0, 91, 580, 91);
  rect(0, 50, 580, 40);

  rect(0, 610, 580, 40);
}

void estrada() {
  faixax=20;
  faixay=150;
  fill(255);
  noStroke();
  for (b=1; b<=4; b++) {
    for (a=1; a<=7; a++) {
      rect(faixax, faixay, 60, 5);
      faixax=faixax + 80;
    }
    faixax=20;
    faixay=faixay+50;
  }
  for (a=1; a<=7; a++) {
    fill(255, 255, 0);
    rect(faixax, 350, 60, 4);
    rect(faixax, 355, 60, 4);
    faixax=faixax+80;
  }
  faixay=350;
  fill(255);
  for (b=1; b<=5; b++) {
    for (a=1; a<=7; a++) {
      rect(faixax, faixay, 60, 5);
      faixax=faixax + 80;
    }
    faixax=20;
    faixay=faixay+50;
  }
}

void carros() {
  if (pont<5) {
    mru();
  }
  fill(255, 0, 0);
  rect(distcarro, carro, 50, 25);
  fill(0, 255, 0);
  rect(distcarro4, carro4, 50, 25);
  if (pont<5) {
    mru2();
  }
  fill(0, 0, 255);
  rect(distcarro3, carro3, 50, 25);
  if (pont<5) {
    movimento2();
  }
  fill(50, 100, 255);
  rect(distcarro2, carro2, 50, 25); 
  if (pont<5) {
    movimento();
  }
}
void movimento() {
  vel=2;
  dist=tempo * vel;
  distcarro2 = dist;
  if (distcarro2+50 <=0) {
    tempo=300;
  }
  tempo--;
}
void movimento2() {
  vel=7;
  dist=tempo2 * vel;
  distcarro3 = dist;
  if (distcarro3+50 <=0) {
    tempo2=300;
  }
  tempo2--;
}
void mru() {
  vel=3;
  dist=temp * vel;
  distcarro = dist;
  if (distcarro-50>580) {
    temp=0 -50;
  }
  temp++;
}
void mru2() {
  vel=5;
  dist=temp2 * vel;
  distcarro4 = dist;
  if (distcarro4-50>580) {
    temp2=0 -50;
  }
  temp2++;
}

void personagem() {
  fill(255, 255, 0);
  rect(colx, mov, 24, 24);
  if (mov+24<0) {
    mov=610;
    pont++;
  }
  colisao();
}
void personagem2() {
  fill(255, 0, 255);
  rect(colx2, mov2, 24, 24);
  if (mov2+24<0) {
    mov2=610;
    pont++;
  }
  colisao2();
}
void pontuacao() {
  if (mov+24<0) {
    pont++;
  }
}

void colisao() {
  if (colx >= distcarro && colx <= distcarro+50  && mov >= carro && mov <= carro+25) {
    mov=mov+50;
  }
  if (colx+24 >= distcarro && colx+24 <= distcarro+75  && mov+24 >= carro && mov+24 <= carro+25) {
    mov=mov+50;
  }
  if (colx >= distcarro2 && colx <= distcarro2+50  && mov >= carro2 && mov <= carro2+25) {
    mov=mov+50;
  }
  if (colx+24 >= distcarro2 && colx+24 <= distcarro2+75  && mov+24 >= carro2 && mov+24 <= carro2+50) {
    mov=mov+50;
  }
  if (colx >= distcarro4 && colx <= distcarro4+50  && mov >= carro4 && mov <= carro4+25) {
    mov=mov+50;
  }
  if (colx+24 >= distcarro4 && colx+24 <= distcarro4+75  && mov+24 >= carro4 && mov+24 <= carro4+25) {
    mov=mov+50;
  }
  if (colx >= distcarro3 && colx <= distcarro3+50  && mov >= carro3 && mov <= carro3+25) {
    mov=mov+50;
  }
  if (colx+24 >= distcarro3 && colx+24 <= distcarro3+75  && mov+24 >= carro3 && mov+24 <= carro3+50) {
    mov=mov+50;
  }
}
void colisao2() {
  if (colx2 >= distcarro && colx2 <= distcarro+50  && mov2 >= carro && mov2 <= carro+25) {
    mov2=mov2+50;
  }
  if (colx2+24 >= distcarro && colx2+24 <= distcarro+75  && mov2+24 >= carro && mov2+24 <= carro+25) {
    mov2=mov2+50;
  }
  if (colx2 >= distcarro2 && colx2 <= distcarro2+50  && mov2 >= carro2 && mov2 <= carro2+25) {
    mov2=mov2+50;
  }
  if (colx2+24 >= distcarro2 && colx2+24 <= distcarro2+75  && mov2+24 >= carro2 && mov2+24 <= carro2+50) {
    mov2=mov2+50;
  }
  if (colx2 >= distcarro4 && colx2 <= distcarro4+50  && mov2 >= carro4 && mov2 <= carro4+25) {
    mov2=mov2+50;
  }
  if (colx2+24 >= distcarro4 && colx2+24 <= distcarro4+75  && mov2+24 >= carro4 && mov2+24 <= carro4+25) {
    mov2=mov2+50;
  }
  if (colx2 >= distcarro3 && colx2 <= distcarro3+50  && mov2 >= carro3 && mov2 <= carro3+25) {
    mov2=mov2+50;
  }
  if (colx2+24 >= distcarro3 && colx2+24 <= distcarro3+75  && mov2+24 >= carro3 && mov2+24 <= carro3+50) {
    mov2=mov2+50;
  }
}


void draw () {

  background(125);

  estrada();
  calcada();
  personagem();
  personagem2();
  pontuacao();
  textSize(25);
  fill(255);
  text(pont, 125, 37);
  carros();
  if (pont>=5) {
    textSize(90);
    fill(255, 0, 0);
    text( "FINALIZADO", 15, 325);
  }
}
void keyPressed() {
  if (pont<5) {
    if ( keyCode == UP) {
      mov=mov-5;
    }
    if ( keyCode == DOWN) {
      mov=mov+5;
    }
    if ( keyCode == 'W') {
      mov2=mov2-5;
    }
    if ( keyCode == 'S') {
      mov2=mov2+5;
    }
  }
}

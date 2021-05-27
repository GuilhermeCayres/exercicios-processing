int a,b,c,d;

void setup(){
  
size(800,600);

background(0);
a=width/5;
b=a/2;
c=height/5;
d=c/2;
  

}

void draw(){
  fill(255);
  
triangle(a,c-c,a+b,c,a-b,c);
triangle(a-b,c,a,c+c,a-a,c+c);
triangle(a+b,c,a,c+c,a+a,c+c);
if(key=='s'){
  c++;}
  if(key=='w'){c--;}
  if(key=='a'){a--;}
  if(key=='d'){a++;}
  
  if(mouseX>= a-b && mouseX<=a+b && mouseY<=c && mouseY>=c-c){    
fill(254,254,7);
triangle(a,c-c,a+b,c,a-b,c);
  }
else{fill(255); triangle(a,c-c,a+b,c,a-b,c);}
if(mouseX>=a-a && mouseX<=a && mouseY>=c && mouseY<=c+c){
  fill(254,254,7);
triangle(a-b,c,a,c+c,a-a,c+c);
}
else{fill(255); triangle(a-b,c,a,c+c,a-a,c+c);}
if(mouseX>=a && mouseX<=a+a && mouseY>=c && mouseY<=c+c){
  fill(254,254,7);
triangle(a+b,c,a,c+c,a+a,c+c);}
else{fill(255); triangle(a+b,c,a,c+c,a+a,c+c);}
}

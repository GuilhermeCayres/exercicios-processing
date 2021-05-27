void setup (){
  size(500,300);
  noStroke();

}
void draw(){
  if(mouseX>100 && mouseX<200 && mouseY>100 && mouseY<200) background(75,51,85);
  else background (0);
  if (mouseX>300 && mouseX<400 && mouseY>100 && mouseY<200) background(125,11,37);
  
    fill(75,51,85);
   rect(100,100,100,100);
   fill(125,11,37);
   rect(300,100,100,100);
}
  

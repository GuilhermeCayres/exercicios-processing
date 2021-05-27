int [][] minado = new int[10][10];
int a=0,i,j;

for(  i = 0; i< minado.length; i++){
for(  j =0; j< minado[0].length; j++){
  minado[i][j]=(int) random(0,2);
print(" ",minado[i][j]);
if(j==9){
println("  ");}

}}
while(a<1){
  i=(int) random(0,10);
  j=(int) random(0,10);
  if(minado[i][j] == 1){
    println("Fim de Jogo! A bomba estava na linha: ",i,"e na coluna: ",j);
    a=1;}
    if(minado[i][j] == 0){
      println("Opa foi por pouco! não há nenhuma bomba na linha: ",i,"e na coluna: ",j);
      if(minado[i-1][j-1] == 0){
      println(" as linhas: ", i-1,"e colunas: ",j-1," em volta tambem não possuem bombas.");}
      if(minado[i-1][j] == 0){
      println(" as linhas: ", i-1,"e colunas: ",j," em volta tambem não possuem bombas.");}
      if(minado[i-1][j+1] == 0){
      println(" as linhas: ", i-1,"e colunas: ",j+1," em volta tambem não possuem bombas.");}
      if(minado[i][j-1] == 0){
      println(" as linhas: ", i,"e colunas: ",j-1," em volta tambem não possuem bombas.");}
      if(minado[i][j+1] == 0){
      println(" as linhas: ", i,"e colunas: ",j+1," em volta tambem não possuem bombas.");}
      if(minado[i+1][j-1] == 0){
      println(" as linhas: ", i+1,"e colunas: ",j-1," em volta tambem não possuem bombas.");}
      if(minado[i+1][j] == 0){
      println(" as linhas: ", i+1,"e colunas: ",j," em volta tambem não possuem bombas.");}
      if(minado[i+1][j+1] == 0){
      println(" as linhas: ", i+1,"e colunas: ",j+1," em volta tambem não possuem bombas.");}
}
 
}

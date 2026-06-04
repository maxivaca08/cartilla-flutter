//dado un numero x determinar si es magico.Es magico si
//la suma de sus digitos es imar y tiene 3 divisiones
import'dart:io';
void main(){
  int x;
  print('Ingrese un numero: ');
  x = int.parse(stdin.readLineSync()!);
  int impar=0;
  int respaldo=x;
  int divisiones=0;
  int suma=0;
  for(int i=1;i<=x;i++){
    if(x%i==0){
      divisiones++;
    }
  }
  int digito=0;
  while(respaldo>0){
    digito=respaldo%10;
    suma=suma+digito;
    respaldo=respaldo ~/10;
    if(suma%2!=0){
      impar++;
    } 
  }
  if(divisiones==3 && impar==1){
    print('el numero $x; es magico');
  }else{
    print('el numero no es magico');
  }
}
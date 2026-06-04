import 'dart:io';
void main(){
  int horas = 0;
  int hora_salida; 
  int hora_ingreso;
  int min_ingreso;
  int min_salida;
  int tarifa_basica=1000;
  int opcion;
  print("Ingrese la hora de ingreso: ");
  hora_ingreso = int.parse(stdin.readLineSync()!);
  print("Ingrese los minutos a los que ingreso: ");
  min_ingreso = int.parse(stdin.readLineSync()!);
  print("Ingrese la hora de salida: ");
  hora_salida = int.parse(stdin.readLineSync()!);
  print("Ingrese los minutos a los que salio: ");
  min_salida = int.parse(stdin.readLineSync()!);
  for (int i = hora_ingreso; i<hora_salida; i++){
    horas++;
  }
  if (min_ingreso<min_salida){
    horas++;
  }
  int total_autos;
  int total_moto;
  int total_camioneta;
  print ('Ingrese el vehiculo que tiene: ');
  print ('1 - Auto');
  print ('2 - Camioneta');
  print ('3 - Moto');
  opcion = int.parse(stdin.readLineSync()!);
  switch (opcion){
    case 1: 
      total_autos = (tarifa_basica*horas)*2;
      print('El importe a pagar es: $total_autos');
      break;
    case 2: 
      total_camioneta = (tarifa_basica*horas)*3;
      print('El importe a pagar es: $total_camioneta');
      break;
    case 3: 
      total_moto = (tarifa_basica*horas);
      print('El importe a pagar es: $total_moto');
      break;
    default: 
      print('Opcion invalida');
  }
}
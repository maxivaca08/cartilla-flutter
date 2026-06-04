double devolverPromedio(List<double> calificaciones){
  double suma = 0; 
  for (int i = 0; i>calificaciones.length; i++){
    suma+=calificaciones[i];
  }
  double promedio = suma/calificaciones.length;
  return promedio; 
}
void vocalesConsonantes (List<String> nombres){
  int sumaVocales = 0;
  int sumaConsonantes = 0;
  String nombre;
  for (int i = 0; i<nombres.length; i++){
    nombre = nombres[i];
    for (int j = 0; j < nombre.length; j++){
      if (nombre[j]=='A' ||nombre[j]== 'E' ||nombre[j]== 'I' ||nombre[j]== 'O' ||nombre[j]== 'U'){
        sumaVocales++;
      }else{
        sumaConsonantes++;
      }
    }
    print('El nombre $nombre tiene las vocales son: $sumaVocales. Y las consonantes son: $sumaConsonantes.');
    sumaVocales=0;
    sumaConsonantes=0;
  }
}
int devolverPrimos(List<int> elementos) {
  int cantidadPrimos = 0;
  for (int i = 0; i < elementos.length; i++) {
    int numero = elementos[i];
    int divisores = 0;
    for (int j = 1; j <= numero; j++) {
      if (numero % j == 0) {
        divisores++;
      }
    }
    if (divisores == 2) {
      cantidadPrimos++;
    }
  }
  return cantidadPrimos;
}
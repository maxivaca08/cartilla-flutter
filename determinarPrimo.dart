import 'dart:io';
void main() {
  int x = int.parse(stdin.readLineSync()!);
  int divisores = 0;
  for (int i = 1; i <= x; i++) {
    if (x % i == 0) {
      divisores++;
    }
  }
  if (divisores == 2) {
    int respaldo = x;
    while (respaldo > 0) {
      int digito = respaldo % 10;
      respaldo = respaldo ~/ 10;
      int cantDivisores = 0;
      for (int i = 1; i <= digito; i++) {
        if (digito % i == 0) {
          cantDivisores++;
        }
      }
      print('El dígito $digito tiene $cantDivisores divisores');
    }
  } else {
    print('El número no es primo');
  }
}
void main() {
  BigInt x = BigInt.parse('12712377454280344123');
  int sumaPares = 0;
  int productoImpares = 1;
  int cantidadPrimos = 0;
  while (x > BigInt.zero) {
    int digito = (x % BigInt.from(10)).toInt();
    if (digito % 2 == 0) {
      sumaPares += digito;
    } else {
      productoImpares *= digito;
      if (digito == 3 || digito == 5 || digito == 7) {
        cantidadPrimos++;
      }
    }
    x = x ~/ BigInt.from(10);
  }
  print("Suma de pares: $sumaPares");
  print("Producto de impares: $productoImpares");
  print("Cantidad de primos impares: $cantidadPrimos");
}
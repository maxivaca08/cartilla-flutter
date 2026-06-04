class Alumno{ 
  final String nombre;
  final String? apellido;
  final int edad; 
  List<double> promedio = [10, 6, 8];
  Alumno({
    required this.nombre,
    this.apellido,
    required this.edad,
  });
  //Metodo
  double calcularPromedio(){
    double suma = 0;
    for(int i=0; i<promedio.length; i++){
      suma+=promedio[i];
    }
    double x = suma/promedio.length;
    return x;
  }
  String? mostrarEstado(double x){
    if (x>=6){
      return ('Aprobado');
    }if (x>6 && x>=4){
      return ('Recuperatorio');
    }else{ 
      return ('Desaprobado');
    }
  }
  @override
  String toString(){
    double nota = calcularPromedio();
    String estado = mostrarEstado(nota);
    return 'Su promedio es: $nota ';
  }
  }

void main(){
  var sofia = Alumno(nombre: 'Sofia', apellido: 'Gonzalez', promedio: 9 );
}
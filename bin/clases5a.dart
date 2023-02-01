void main(List<String> arguments) {
  final laptop1 = Computadora('Asus', 'Intel core i7', 16);
  print(laptop1);
  // Modificando un campo publico del objeto laptop1
  laptop1.ram = 8;
  print(laptop1);
  print('Marca de laptop1: ${laptop1.marca}');

  final laptop2 = Computadora('Acer', 'Intel core i3', 4);
  print('marca: ${laptop2.marca}, cpu:${laptop2._cpu}, ram: ${laptop2._ram}');
  // Modificando un campo publico del objeto laptop1
  laptop2.ram = 8;
  laptop2._cpu = 'Ryzen 5';
  laptop2._marca = 'Acer';
  print('marca: ${laptop2.marca}, cpu:${laptop2._cpu}, ram: ${laptop2._ram}');
}

//1. Crear un obejeto laptop2 con valores enviados al constructor
//2. Imprimir los valores originales del objeto laptop2
//3. Modificar cada uno de las caracteristicas del objeto laptop2
//4. Usar el get para imprimir cada uno de los valores de laptop2

class Computadora {
  // campos privados
  String _marca = 'desconocida';
  String _cpu = 'desconocida';
  int _ram = 0;

//Constructor
  Computadora(String m, String c, int r) {
    _marca = m;
    _cpu = c;
    _ram = r;
  }
  //getter de marca
  String get marca {
    return _marca;
  }

//setter de _marca
  set marca(String valor) {
    _marca = valor;
  }

//getter de _cpu
  String get cpu {
    return _cpu;
  }

//setter de _cpu
  set cpu(String valor) {
    _cpu = valor;
  }

  //getter de _ram
  int get ram {
    return _ram;
  }

//setter de _ram
  set ram(int valor) {
    _ram = valor;
  }

  @override
  String toString() {
    return 'marca: ${this.marca}, cpu: ${this.cpu}, ram: ${this.ram}';
  }
}

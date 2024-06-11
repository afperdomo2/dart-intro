void main() {
  final mySquare = Square(side: -10);

  // mySquare.side = -15;

  print('Area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side})
      // Usando assert para validar parámetros
      : assert(side >= 0, 'Side must be >= 0'),
        _side = side;

  set side(double value) {
    print('Setting new value: ${value}');
    if (value < 0) {
      throw "Value must be >= 0";
    }
    _side = value;
  }

  double get area {
    return _side * _side;
  }

  double calculateArea() {
    return _side * _side;
  }
}

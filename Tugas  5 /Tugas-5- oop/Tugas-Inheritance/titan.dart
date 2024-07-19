class Titan {
  late double _powerPoint;

  void setPowerPoint(double value) {
    if (value < 5) {
      _powerPoint = 5;
    } else {
      _powerPoint = value;
    }
  }

  double getPowerPoint() => _powerPoint;
}

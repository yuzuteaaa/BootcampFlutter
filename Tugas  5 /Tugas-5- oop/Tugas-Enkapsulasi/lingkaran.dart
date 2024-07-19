class Lingkaran {
  late double _ruas;

  // Setter for _ruas with validation
  void setRuas(double value) {
    if (value < 0) {
      _ruas = value * -1; // Convert negative value to positive
    } else {
      _ruas = value;
    }
  }

  // Getter for _ruas
  double getRuas() => _ruas;

  // Method to calculate the area of the circle
  double hitungLuas() => 3.141592653589793 * _ruas * _ruas;
}

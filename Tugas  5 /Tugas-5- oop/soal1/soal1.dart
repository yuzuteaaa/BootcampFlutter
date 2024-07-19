class Geometry {
  double setengah = 0.5;
  double pi = 3.141592653589793;

  double calculateTriangleArea(double alas, double tinggi) {
    return setengah * alas * tinggi;
  }

  double calculateCircleArea(double radius) {
    return pi * radius * radius;
  }
}

void main() {
  double alas = 20.0;
  double tinggi = 30.0;
  double radius = 10.0;

  var geometry = Geometry();
  var luasSegitiga = geometry.calculateTriangleArea(alas, tinggi);
  var luasLingkaran = geometry.calculateCircleArea(radius);

  print("Luas Segitiga: $luasSegitiga");
  print("Luas Lingkaran: $luasLingkaran");
}

import 'lingkaran.dart';

void main() {
  var lingkaran = Lingkaran();

  // Setting the value of _ruas
  lingkaran.setRuas(-10.0);

  // Getting the value of _ruas
  double ruas = lingkaran.getRuas();
  print("Ruas lingkaran: $ruas");

  // Calculating and printing the area of the circle
  double luasLingkaran = lingkaran.hitungLuas();
  print("Luas lingkaran: $luasLingkaran");
}

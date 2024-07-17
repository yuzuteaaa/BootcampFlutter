void main() {
  //No. 1
  print(teriak());

  //No. 2
  var num1 = 12;
  var num2 =4;
  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

  //No. 3
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  //No. 4
  int number = 14;
  int fact = factorial(number);
  print('Faktorial dari $number adalah $fact');
}

teriak(){
  return('Halo Sanbers!');
}

kalikan(num1, num2){
  return(num1 * num2);
}

introduce(name, age, address, hobby){
  return('Nama saya $name, umur saya $age tahun, alamat saya di $address,dan saya punya hobby yaitu $hobby');
}

int factorial(int n) {
  if (n <= 0) {
    return 1;
  } else {
    int result = 1;
    for (int i = n; i > 1; i--) {
      result *= i;
    }
    return result;
  }
}

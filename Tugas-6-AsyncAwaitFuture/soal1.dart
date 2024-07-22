class Human {
  String name = "Nama Character One Piece";

  Future<void> getName() async {
    await Future.delayed(Duration(seconds: 3));
    name = "Rafi";
    print("get data [done]");
  }
}

void main(List<String> args) async {
  var h = Human();
  print("Luffy");
  print("Zorro");
  print("Killer");
  print(h.name);
  await h.getName();
  print("name 3: ${h.name}");
}

//async await dan future
//pertama munculnya yaitu luffy, zoro, killer dan nama character one piece
//selanjutnya 3 detik kemudian muncul get data [done] , name 3: Rafi
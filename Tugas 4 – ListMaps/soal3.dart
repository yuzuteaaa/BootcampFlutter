void main(List<String> args) {
  dataHandling(input);
}

var input = [
  ['0001', 'Roma Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002','Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['0003','Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
];

dataHandling(data) {
  for(var entry in data) {
    print('Nomer Id: ${entry[0]}');
    print('Nama Lengkap: ${entry[1]}');
    print('TTL: ${entry[2]} ${entry[3]}');
    print('Hobi: ${entry[4]}');
    print('');
  }
}
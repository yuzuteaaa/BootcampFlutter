void main() {
  Future.delayed(Duration(seconds: 1), () {
    print('Life');
  });
  Future.delayed(Duration(seconds: 3), () {
      print('never flat');
    });
Future.delayed(Duration(seconds: 2), () {
      print('is');
    });
}

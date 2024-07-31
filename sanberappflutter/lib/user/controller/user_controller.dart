import 'package:get/get.dart';
import 'package:sanberappflutter/user/model/user_model.dart';
import 'package:sanberappflutter/user/service/user_service.dart';

class UserController extends GetxController {
  List<UserModel> users = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchDataUser();
  }

  Future<void> fetchDataUser() async {
    users = await UserService().fetchUser();
    update();
  }
}

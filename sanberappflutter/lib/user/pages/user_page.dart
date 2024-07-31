import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/user_controller.dart';
import 'detail_user_page.dart';

class UserPage extends StatelessWidget {
  // Menginisialisasi controller GetX

  @override
  Widget build(BuildContext context) {
    print("build bang");
    var userController = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: GetBuilder<UserController>(
        init: userController,
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailUserPage(
                            userId: controller.users[index].id)));
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                      '${controller.users[index].firstName} ${controller.users[index].lastName}'),
                  leading: Image.network(controller.users[index].avatar),
                  subtitle: Text(controller.users[index].email),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

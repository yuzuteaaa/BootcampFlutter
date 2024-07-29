import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../service/user_service.dart';

class DetailUserPage extends StatefulWidget {
  final int userId;

  const DetailUserPage({super.key, required this.userId});

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  late UserModel user;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  getUserData() async {
    user = await UserService().fetchUserById(widget.userId);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail User Page'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('${user.firstName} ${user.lastName}'),
                leading: Image.network(user.avatar),
                subtitle: Text(user.email),
              ),
            ),
    );
  }
}

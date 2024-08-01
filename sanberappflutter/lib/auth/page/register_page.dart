import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/routes/app_routes_named.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 352,
                  height: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/authPage/image_news_app.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomTextFormField(
                label: "Email",
                controller: _emailController,
              ),
              CustomTextFormField(
                label: "Password",
                controller: _passwordController,
                obscureText: true,
              ),
              CustomTextFormField(
                label: "Konfirmasi Password",
                controller: _passwordController,
                obscureText: true,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Color(0xff3490BB),
                  ),
                  onPressed: () async {
                    createUser();
                  },
                  child: Text(
                    'Mendaftar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffCECECE),
                      height: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau daftar menggunakan',
                      style: TextStyle(color: Color(0xffCECECE)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xffCECECE),
                      height: 3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Material(
                color: Colors.white,
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/authPage/google.png')),
                          ),
                        ),
                        Text(
                          'Mendaftar',
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sudah punya akun? silahkan',
                    style: TextStyle(color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => LoginPage()));
                      Get.toNamed(AppRoutesNamed.loginPage);
                    },
                    child: Text(
                      ' masuk',
                      style: TextStyle(color: Color(0xff3490BB)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> createUser() async {
    final auth = FirebaseAuth.instance;
    try {
      await auth.createUserWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

      // Navigator.pop(
      //   context,
      //   MaterialPageRoute(builder: (context) => LoginPage()),
      // );
      Get.toNamed(AppRoutesNamed.loginPage);
    } catch (e) {
      // Handle error
      print("Login error: $e");
    }
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
  });

  final String label;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(color: Color(0xffCECECE)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffCECECE)),
          ),
        ),
      ),
    );
  }
}

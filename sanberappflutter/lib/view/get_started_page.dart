import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/routes/app_routes_named.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 86),
              height: 330,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/news_paper.png'))),
            ),
            SizedBox(height: 37),
            Text(
              "Yuk, Membaca Bersama \n Sanber News",
              style:
                  GoogleFonts.arimo(fontSize: 21, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 21),
            Text(
              "Berita Terpercaya, Di Ujung Jari Anda",
              style: TextStyle(fontSize: 15),
            ),
            Spacer(),
            SizedBox(
              height: 52,
              width: 354,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Buttomnavbar()),
                  //   (route) => false,
                  // );
                  Get.toNamed(AppRoutesNamed.loginPage);
                },
                child: Text(
                  "Masuk",
                  style: GoogleFonts.arimo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3498DB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            SizedBox(
              height: 52,
              width: 354,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutesNamed.registerPage);
                },
                child: Text(
                  'Mendaftar',
                  style: GoogleFonts.arimo(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Color(0xff3498DB)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

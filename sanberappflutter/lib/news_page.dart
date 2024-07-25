import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(children: [
              Image.asset('assets/newsPage/background.png'),
              Positioned(
                top: 40,
                left: 32,
                right: 303,
                child: IconButton(
                  iconSize: 40,
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Image.asset('assets/newsPage/backToTheFuture.png'),
                    ),
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              )
            ]),
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/newsPage/avatar.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        'Samuel Newtor',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal, fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TECHNOLOGY',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'To build responsibly, tech \nneeds to do more than just \nhire chief ethics officers',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '17 June, 2023 — 4:49 PM',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Divider(
                        height: 2,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'In the last couple of years, we’ve seen \nnew teams in tech companies emerge \nthat focus on responsible innovation, \ndigital well-being, AI ethics or humane \nuse. Whatever their titles, these \nindividuals are given the task of \n“leading” ethics at their companies.',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

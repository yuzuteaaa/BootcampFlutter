import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 40,
          icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: Image.asset('assets/homePage/menu.png'),
            ),
          ),
          onPressed: () {
            // do something
          },
        ),
        centerTitle: true,
        title: Text(
          "NewsApp",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 311,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 311,
                  height: 311,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/homePage/Mask.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'TECHNOLOGY',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Text(
                                    '3 min ago',
                                    style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              const SizedBox(height: 131),
                              Text(
                                'Microsoft launches a \ndeepfake detector tool \nahead of US election',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 13),
                              Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child:
                                        Image.asset('assets/homePage/chat.png'),
                                  ),
                                  SizedBox(width: 24),
                                  Container(
                                    width: 17,
                                    height: 23.95,
                                    child: Image.asset(
                                        'assets/homePage/bookmark.png'),
                                  ),
                                  SizedBox(width: 174),
                                  Container(
                                    width: 24,
                                    height: 19.9,
                                    child: Image.asset(
                                        'assets/homePage/share.png'),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 311,
                  height: 311,
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/homePage/Mask.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'TECHNOLOGY',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Text(
                                    '3 min ago',
                                    style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              const SizedBox(height: 131),
                              Text(
                                'Microsoft launches a \ndeepfake detector tool \nahead of US election',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 13),
                              Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child:
                                        Image.asset('assets/homePage/chat.png'),
                                  ),
                                  SizedBox(width: 24),
                                  Container(
                                    width: 17,
                                    height: 23.95,
                                    child: Image.asset(
                                        'assets/homePage/bookmark.png'),
                                  ),
                                  SizedBox(width: 174),
                                  Container(
                                    width: 24,
                                    height: 19.9,
                                    child: Image.asset(
                                        'assets/homePage/share.png'),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Text(
                'Latest News',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              SizedBox(width: 228),
              Container(
                width: 16,
                height: 16,
                child: Image.asset('assets/homePage/arrow.png'),
              )
            ],
          ),
          SizedBox(height: 23),
          Expanded(
              child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/homePage/Image.png'),
                      ),
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TECHNOLOGY',
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Insurtech startup \nPasarPolis gets \$54 \nmillion — Series B',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/homePage/Image2.png'),
                      ),
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TECHNOLOGY',
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'The IPO parade \ncontinues as Wish \nfiles, Bumble targets',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/homePage/Image3.png'),
                      ),
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TECHNOLOGY',
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Hypatos gets \n\$11.8M for a deep \nlearning approach',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/app/config/app_assets.dart';
import 'package:sanberappflutter/app/config/circularIconButton.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 32, right: 32, top: 40, bottom: 94),
        child: Column( //Column1
          children: [
            Row(
              children: [
                CircularIconButton(onPressed: () {}),
                SizedBox(width: 231,),
                Container(
                  width: 40,
                  height: 40,
                  child: Image.asset(AppAssets.searchIcon),
                )
              ],
            ),
            SizedBox(height: 34),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Settings",
                  style: GoogleFonts.poppins(
                    fontSize: 36,
                    fontWeight: FontWeight.w900
                  ),),
                SizedBox(height: 28,),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffECEDEE),
                          ),
                          width: 56,
                          height: 56,
                          child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(AppAssets.personIcon),
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Profile settings',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal),),
                            Text('Settings regrading your profile',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.grey))
                          ],
                        ),
                        Spacer(),
                        Center(
                          child: Container(
                            width: 16,
                            height: 16,
                            child: Image.asset(AppAssets.arrowIcon),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffECEDEE),
                          ),
                          width: 56,
                          height: 56,
                          child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(AppAssets.newsIcon),
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('News settings',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal),),
                            Text('Choose your favourite topics',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.grey))
                          ],
                        ),
                        Spacer(),
                        Center(
                          child: Container(
                            width: 16,
                            height: 16,
                            child: Image.asset(AppAssets.arrowIcon),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffECEDEE),
                          ),
                          width: 56,
                          height: 56,
                          child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(AppAssets.notifIcon),
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Notifications',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal),),
                            Text('When would you like to be notified',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.grey))
                          ],
                        ),
                        Spacer(),
                        Center(
                          child: Container(
                            width: 16,
                            height: 16,
                            child: Image.asset(AppAssets.arrowIcon),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffECEDEE),
                          ),
                          width: 56,
                          height: 56,
                          child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(AppAssets.fileIcon),
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Subscriptions',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal),),
                            Text('Currently, you are in Starter Plan',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.grey))
                          ],
                        ),
                        Spacer(),
                        Center(
                          child: Container(
                            width: 16,
                            height: 16,
                            child: Image.asset(AppAssets.arrowIcon),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Other",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontSize: 26
                  ),
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffECEDEE),
                      ),
                      width: 56,
                      height: 56,
                      child: Padding(
                        padding: EdgeInsets.all(18),
                        child: Image.asset(AppAssets.bugIcon),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bug report',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal),),
                        Text('Report bugs very easy',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.grey))
                      ],
                    ),
                    Spacer(),
                    Center(
                      child: Container(
                        width: 16,
                        height: 16,
                        child: Image.asset(AppAssets.arrowIcon),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffECEDEE),
                      ),
                      width: 56,
                      height: 56,
                      child: Padding(
                        padding: EdgeInsets.all(18),
                        child: Image.asset(AppAssets.shareIcon),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Share the app',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.normal),),
                        Text('Share on social media networks',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.grey))
                      ],
                    ),
                    Spacer(),
                    Center(
                      child: Container(
                        width: 16,
                        height: 16,
                        child: Image.asset(AppAssets.arrowIcon),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

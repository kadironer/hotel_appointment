import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_appointment/app_color.dart';
import 'package:hotel_appointment/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.MainWhiteColor,
      appBar: mainAppBar(),
      body: Container(
        width: size.width,
        height: size.height * 0.2,
        color: AppColor.MainBackgroundColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  mainTextField(size),
                  mainSearchButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector mainSearchButton() {
    return GestureDetector(
                  onTap:(){
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColor.MainColor,
                      shape: BoxShape.circle,
                      boxShadow:[
                        BoxShadow(
                          color: AppColor.MainBlackColor.withOpacity(0.5),
                          blurRadius: 3,
                          offset: Offset(0,3)
                        )
                      ]
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.search,
                        size: 35,
                        color: AppColor.MainWhiteColor,
                      ),
                    ),
                  ),
                );
  }

  SizedBox mainTextField(Size size) {
    return SizedBox(
                  width: size.width * 0.75,
                  height: 60,
                  child: Material(
                    shadowColor: AppColor.MainBlackColor,
                    elevation: 10,
                    borderRadius: BorderRadius.circular(40),
                    child: TextField(
                      autofocus: false,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20.0
                        )
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        filled: true,
                        fillColor: AppColor.MainWhiteColor,
                        hintText: AppText().appHintText,
                        hintStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 20
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  ),
                );
  }

  AppBar mainAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          CupertinoIcons.left_chevron,
          color: AppColor.MainBlackColor,
          size: 30.0,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        AppText().appBarText,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: AppColor.MainBlackColor,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.0)),
      ),
      backgroundColor: AppColor.MainWhiteColor,
      actions: [
        IconButton(
          icon: Icon(
            CupertinoIcons.heart,
            color: AppColor.MainBlackColor,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            CupertinoIcons.location_solid,
            color: AppColor.MainBlackColor,
            size: 30.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

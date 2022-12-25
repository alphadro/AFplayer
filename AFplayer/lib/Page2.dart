import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page3.dart';
import 'package:flutter_application_1/Setting.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_application_1/widgets/playing.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Search.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Page2> {
  bool t1 = true;
  bool s1 = true;
  List<String> Music = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            drawer: NavegationDrawer(),
            backgroundColor: Palette.primary,
            appBar: AppBar(
                centerTitle: true,
                title: Text(
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "IranwebSanse",
                      fontWeight: FontWeight.w400,
                    ),
                    "My Music"),
                backgroundColor: Palette.primary,
                elevation: 1,
                shadowColor: Colors.grey,
                leadingWidth: 50,
                actions: [
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            s1 = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Search())));
                          });
                        },
                        child: const Icon(
                          Icons.add,
                          color: Color(0xff3c4550),
                          size: 25,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            s1 = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Search())));
                          });
                        },
                        child: const ImageIcon(
                          AssetImage("assets/icons/search.png"),
                          size: 25,
                          color: Color(0xff3c4550),
                        ),
                      )),
                ]),
            body: Stack(children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 12),
                child: Container(
                    color: Palette.primary,
                    child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 14,
                        childAspectRatio: 2 / 2.5,
                        crossAxisSpacing: 7,
                        children: List<Widget>.generate(Music.length, ($index) {
                          return Card(
                              elevation: 0,
                              clipBehavior: Clip.hardEdge,
                              color: Palette.primary,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Positioned(
                                  top: 0,
                                  height: 90.h,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: const Image(
                                      image: AssetImage(
                                          'assets/images/cover_img.png'),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Page3()));
                                  },
                                ),
                                const Positioned(
                                  top: 2,
                                  left: 5,
                                  child: ImageIcon(
                                    AssetImage("assets/icons/folder.png"),
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                const Positioned(
                                  top: 2,
                                  right: 5,
                                  child: ImageIcon(
                                    AssetImage("assets/icons/menu.png"),
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Positioned(
                                    bottom: 11,
                                    child: Text(
                                      'Like it Doesnt Hurt',
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: Colors.white,
                                        fontFamily: "IranwebSanse",
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )),
                                Positioned(
                                    bottom: 0,
                                    child: Text(
                                      'Danito & Athina',
                                      style: TextStyle(
                                        color: Color(0xff3c4550),
                                        fontSize: 8.sp,
                                        fontFamily: "IranwebSanse",
                                        fontWeight: FontWeight.w200,
                                      ),
                                    )),
                              ]));
                        }))),
              ),
              const Positioned(bottom: 5, left: 8, right: 8, child: playing()),
            ]),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colors.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavegationDrawer(),
      appBar: AppBar(),
    );
  }
}

class NavegationDrawer extends StatelessWidget {
  NavegationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Palette.primary,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [buildHeader(context), buildMenuItems(context)],
          ),
        ));
  }

  Widget buildHeader(BuildContext context) => Opacity(
        opacity: 0.75,
        child: Container(
          height: 150,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              //=> Background Linear Gradient
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffc165dd), Color(0xff5c27fe)],
            ),
          ),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: 24,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "AFplayer",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          children: [
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/icons/circlemusic.png'),
                color: Palette1.primary,
              ),
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/icons/circlemusic.png'),
                color: Color(0xffc165dd),
              ),
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/icons/circlemusic.png'),
                color: Color(0xff5c27fe),
              ),
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/icons/circlemusic.png'),
                color: Colors.white,
              ),
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            )
          ],
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'component.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  tealcontainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(text, style: GoogleFonts.openSans(fontSize: 20.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("app my this"),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 0.2,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/profile1.jpg',
                    errorBuilder: (context, error, stackTrace) {
                      return Text("❌ image dont responce");
                    },
                  ),
                ),
              ),
              // Tabsmobile(text:"home", route:'/'),
              Tapsmobile(text: 'home', route: '/'),
              SizedBox(height: 20.0),
              Tapsmobile(text: 'works', route: '/Works'),
              SizedBox(height: 20.0),
              Tapsmobile(text: 'blog', route: '/Blog'),
              SizedBox(height: 20.0),
              Tapsmobile(text: 'aboutus', route: '/About'),
              SizedBox(height: 20.0),
              Tapsmobile(text: 'contact', route: '/contact'),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () async =>
                        await launch("https://www.instagram.com/fatimasabah"),
                    icon: SvgPicture.asset(
                      "assets/images/instagram.svg",
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () async =>
                        await launch("https://www.instagram.com/fatimasabah"),
                    icon: SvgPicture.asset(
                      "assets/images/github.svg",
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () async =>
                        await launch("https://www.instagram.com/fatimasabah"),
                    icon: SvgPicture.asset(
                      "assets/images/linkedin.svg",
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 111.0,
                    backgroundColor: Colors.white,
                    // child: Image.asset("assets/images/profile2.png",filterQuality: FilterQuality.high,)
                    backgroundImage: AssetImage("assets/images/profile1.jpg"),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold('about us', 35.0),
                    SizedBox(height: 10.0),
                    Sans(
                      'We are a team of passionate developers located in Iraq, Baghdad. Our mission is to create high-quality mobile applications that provide real value to our users.',
                      15.0,
                    ),
                    SizedBox(height: 15.0),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealcontainer('flutter'),
                        tealcontainer('dart'),
                        tealcontainer('fireb'),
                        tealcontainer('andro'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SansBold("Web development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                "develop web development by html css js react and next js",
                15.0,
              ),

              Column(
                children: [
                  SizedBox(height: 20.0),
                  SansBold("app development", 20.0),
                ],
              ),
              Sans(
                "develop web development by html css js react and next js",
                15.0,
              ),

              Column(
                children: [
                  SizedBox(height: 20.0),
                  SansBold("app development", 20.0),
                ],
              ),
              Sans(
                "develop web development by html css js react and next js",
                15.0,
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

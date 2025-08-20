import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/mobile/component.dart';
import 'package:url_launcher/url_launcher.dart';

class Works extends StatefulWidget {
  const Works({super.key});

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  // put in this part background
                  background: Image.asset(
                    "assets/images/profile1.jpg",
                    fit: BoxFit.cover,
                    )
                    ),
                ),
              
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0,),
                  SansBold("works", 35.0)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

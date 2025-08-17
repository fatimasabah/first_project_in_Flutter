import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/mobile/component.dart';
import 'package:url_launcher/url_launcher.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    var widthdevice =MediaQuery.of(context).size.width;
    return Scaffold(
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
                  'assets/images/profile2.png',
                  errorBuilder: (context, error, stackTrace) {
                    return Text("❌ image dont responce");
                  },
                ),
              ),
            ),
            // Tabsmobile(text:"home", route:'/'),
            Tapsmobile(text: 'home', route: '/'),
            SizedBox(height: 20.0),
            Tapsmobile(text: 'works', route: '/works'),
            SizedBox(height: 20.0),
            Tapsmobile(text: 'blog', route: '/Blog'),
            SizedBox(height: 20.0),
            Tapsmobile(text: 'aboutus', route: '/About'),
            SizedBox(height: 20.0,),
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
        headerSliverBuilder:(BuildContext context , bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 35.0,
                color:Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                // put in this part background
              ),
            )
          ];
        } ,
         body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0 ),
          child: Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold("Contact me", 35.0),
              textForm(text: "first name", containerwidth: widthdevice/1.4, hinttext: "pleas type firstname"),
              textForm(text: "last name", containerwidth: widthdevice/1.4, hinttext: "pleas type last name"),
              textForm(text: "phone number", containerwidth: widthdevice/1.4, hinttext: "phone number"),
              textForm(text: "message", containerwidth: widthdevice/1.4, hinttext: "your message", maxlines:10),
            MaterialButton(onPressed: (){},
             elevation: 20.0,
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
             ),
             height: 60.0,
             minWidth: widthdevice/2.2,
             color: Colors.tealAccent,
             child: SansBold("submit", 20.0),
            ),
            

            ],
          ),
         ),
       ),
        
    );
  }
}
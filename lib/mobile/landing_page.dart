import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'component.dart';
import 'package:url_launcher/url_launcher.dart';



class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  tealcontainer(String text){
    return    Container(
               decoration: BoxDecoration(
                  border: Border.all(color: Colors.tealAccent,style: BorderStyle.solid,width: 2.0,),
                  borderRadius: BorderRadius.circular(5.0)
                  ),
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    text,
                    style: GoogleFonts.openSans(fontSize: 20.0),
                  ),
                );  
  }
  @override
  Widget build(BuildContext context) {
    var widthdevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
            Tapsmobile(text: 'works', route: '/works'),
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

      body: ListView(
        children: [
         
          Padding(

            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 117.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/profile1.jpg'),
                  ),
                ),
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0) 
                        )
                        ),
                          padding:EdgeInsets.symmetric(
                          vertical: 10.0,horizontal: 20.0),
                       child: Text(
                        'Hello we are fatima & mustafa',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0
                        )),
                       ),
                       SansBold("flutter developer", 40.0),
                       SansBold('mobile developer', 30.0)
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                    direction: Axis.vertical,
                    spacing: 8.0,
                    children: [
                      Icon(Icons.email),
                      Icon(Icons.phone),
                      Icon(Icons.location_on),
                    ],  
                    ),
                   SizedBox(width: 40.0),
                   Wrap(
                    direction: Axis.vertical,
                    spacing: 12.0,
                    children: [
                      SansBold('fatima@gmail.com', 15.0),
                      SansBold('23254666666666', 15.0),
                      SansBold('Iraq, Baghdad', 15.0),
                    ],
                   )
                  ],
                )
              
              ],
            ),
          ),
       SizedBox(height: 90.0),
      //  section about us
      Padding(padding:EdgeInsets.only(left:20.0),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SansBold('about us', 35.0),
          Sans('We are a team of passionate developers located in Iraq, Baghdad. Our mission is to create high-quality mobile applications that provide real value to our users.', 20.0),
          SizedBox(height: 20.0),
          Wrap(
            spacing: 7.0,
            runSpacing: 7.0,
            children: [
              tealcontainer('flutter'),
              tealcontainer('dart'),
              tealcontainer('firebase'),
              tealcontainer('android'),        
            ],
          )
        ],
      )
      ,),
      SizedBox(height: 60.0),
      //third section is what
        Wrap(
           runSpacing: 20.0,
          spacing: 20.0,
          children: [
            SansBold("contact us", 20.0),
            textForm(text:" first name", containerwidth: widthdevice/1.4, hinttext:"pleastype"),
            MaterialButton(onPressed: (){},
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 60.0,
            minWidth: widthdevice/2.2,
            color: Colors.tealAccent,
            child: SansBold("submit", 20.0),
  )
          ],
        ),
        ],
      ),
    );
  }
}

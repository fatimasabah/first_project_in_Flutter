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
    var widthdevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      endDrawer: DrawerM(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 35.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                // put in this part background
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold("Contact me", 35.0),
              textForm(
                text: "first name",
                containerwidth: widthdevice / 1.4,
                hinttext: "pleas type firstname",
              ),
              textForm(
                text: "last name",
                containerwidth: widthdevice / 1.4,
                hinttext: "pleas type last name",
              ),
              textForm(
                text: "phone number",
                containerwidth: widthdevice / 1.4,
                hinttext: "phone number",
              ),
              textForm(
                text: "message",
                containerwidth: widthdevice / 1.4,
                hinttext: "your message",
                maxlines: 10,
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: widthdevice / 2.2,
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

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';
class Tapsmobile extends StatefulWidget {
  final text;
  final route;
  const Tapsmobile({Key? key, required this.text, required this.route})
    : super(key: key);

  @override
  State<Tapsmobile> createState() => _TapsmobileState();
}

class _TapsmobileState extends State<Tapsmobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      height: 50.0,
      minWidth: 180.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const SansBold(this.text, this.size, {this.color = Colors.black, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontWeight: FontWeight.w700, // بولد
        fontSize: size,
        color: color,
      ),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const Sans(this.text, this.size, {this.color = Colors.black, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontWeight: FontWeight.w400,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class textForm extends StatelessWidget {
  final String text;
  final double containerwidth;
  final String hinttext;
  final int maxlines;

  const textForm({
    super.key,
    required this.text,
    required this.containerwidth,
    required this.hinttext,
    this.maxlines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerwidth,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 6.0),

          TextFormField(
            maxLines: maxlines,
            decoration: InputDecoration(
              hintText: hinttext,
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

class AbelCustom extends StatelessWidget {
  final String text;
  final color;
  final size;
  final fontWeight;

  const AbelCustom({
    //  super.key,
    required this.text,
    this.color,
    required this.size,
    this.fontWeight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color == null ? Colors.black : color,
        fontWeight: FontWeight == null ? FontWeight.normal : fontWeight,
      ),
    );
  }
}

class DrawerM extends StatelessWidget {
  const DrawerM({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      );
  }
}
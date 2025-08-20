import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

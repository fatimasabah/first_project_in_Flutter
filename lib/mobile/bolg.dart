import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'component.dart';
import 'package:url_launcher/url_launcher.dart';


class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
         
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
       return <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black
          ),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title:  Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(3.0)
              ),
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: AbelCustom(text: "welcom to my Blog", size: 24.0,color: Colors.white,fontWeight: FontWeight.bold,
              ),
            ),
           background: Image.asset("assets/images/profile1.jpg",
           filterQuality: FilterQuality.high,
           fit: BoxFit.cover,
           ),
          ),
          expandedHeight: 400.0,
        ),
        
       ];
      },
      body: ListView(
        children: [
          BlogPost(),
          BlogPost(),
          BlogPost()
        ],
      ),
      ),


    ));
  }
}

// -----------------------------------------------

class BlogPost extends StatefulWidget {
  const BlogPost({super.key});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expend=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
    const EdgeInsets.only(left: 20.0,right: 20.0,top: 30.0),
    child:Container(
     padding: EdgeInsets.all(10.0),
     decoration: BoxDecoration(
        border: Border.all(
          style: BorderStyle.solid,
          width: 1.0,
           color: Colors.black,
        )
     ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(3.0)
              ),
              child: AbelCustom(text: "who is Dash", size: 25.0,color: Colors.white,),
              ),
              IconButton(onPressed: (){
                setState(() {
                  expend=!expend;
                });
              },
               icon: Icon(Icons.arrow_drop_down_circle_outlined,),
              color: Colors.black
              )
          ],
        ),
        SizedBox(height: 7.0,),
        Text(
          "For more information on sharing state between widgets, check out the following resources: Using widget constructor Since Dart objects are passed by reference, its very common for widgets to define the objects they need to use in their constructor. Any state you pass into a widgets constructor can be used to build its UI:" ,
        style: GoogleFonts.openSans(fontSize: 15.0),
        maxLines: expend==true?null:3,
         overflow: expend==true? TextOverflow.visible:TextOverflow.ellipsis,


        ),

      ],
    ),
    ));
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor:
            Color(0xFF0B726D), // Set the color of the status bar
      ),
    );
    return Scaffold(
      body: Container(
        color: Color(0xFF0B726D),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  "https://i.pinimg.com/originals/d1/ad/13/d1ad13605acd060cbcc4b334e2119883.png",
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Monisha",
                style: GoogleFonts.pacifico(color: Colors.white, fontSize: 30),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: GoogleFonts.sourceSans3(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 20,
                    letterSpacing: 2),
              ),
              Container(
                height: 2,
                width: 200,
                color: Colors.white24,
                margin: EdgeInsets.only(top: 10, bottom: 10),
              ),
              Container(
                width: 300,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Color(0xFF0B726D),
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "9090909090",
                      style: TextStyle(
                        color: Color(0xFF0B726D),
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Color(0xFF0B726D),
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "monisha@gmail.com",
                      style: TextStyle(
                        color: Color(0xFF0B726D),
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

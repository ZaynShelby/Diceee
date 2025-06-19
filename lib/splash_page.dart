import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage>{
  @override
  Widget build(context) {
    return Scaffold(
        body: Text('Splash Page',
      style:GoogleFonts.underdog(
        fontSize: 30,
      ),
      ),
    );
  }
}
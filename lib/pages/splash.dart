import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';


class Splashpage extends StatefulWidget {
  
  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3),()=>Navigator.pushNamed(context,'/signin'),);
    super.initState();
  }
  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor1,
      body: Center(child: Container(width: 130,height: 150,
      decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/splash.png') )
      ),
      ),
      ),
    );
  }
}
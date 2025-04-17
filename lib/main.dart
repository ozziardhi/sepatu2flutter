import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokosepatu/pages/cartpages.dart';
import 'package:tokosepatu/pages/checkoutsucces.dart';
import 'package:tokosepatu/pages/checkoutpage.dart';
import 'package:tokosepatu/pages/editprofile.dart';
import 'package:tokosepatu/pages/home/detailchatpage.dart';
import 'package:tokosepatu/pages/home/mainpage.dart';
import 'package:tokosepatu/pages/productpage.dart';
import 'package:tokosepatu/pages/signin.dart';
import 'package:tokosepatu/pages/signup.dart';
import 'package:tokosepatu/pages/splash.dart';

import 'package:tokosepatu/providers/auth_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthProvider(),
      ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Splashpage(),
          '/signin': (context) => Signin(),
          '/signupp': (context) => Signup(),
          '/home': (context) => Mainpage(),
          '/chat': (context) => Detailchatpage(),
          '/editprofile': (context) => Editprofile(),
          '/product': (context) => Productpage(),
          '/cart': (context) => Cartpage(),
          '/checkout': (context) => Checkoutpage(),
          '/succses-page': (context) => Successpage(),
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:tokosepatu/theme.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset('assets/Profile - Default.png',width: 64,),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Text('Hallo Oxxi',style: primarytextstyle.copyWith(fontSize: 24,fontWeight: semibold),
                  ),
                  Text('@oxxi',style: subtittletextstyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
              ),
                GestureDetector
                (
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/signin', (route)=>false);
                  },
                  child: Image.asset('assets/Exit Button.png',width: 20,))
            ],
          ),
        ),
        ),
      );
    }

    Widget menuitem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style:secondarytextstyle.copyWith(fontSize: 13),
            ),
            Icon(Icons.chevron_right,color: primarytext,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(child: 
      Container(
        padding: EdgeInsets.symmetric(horizontal:defaultMargin),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: bgcolor3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 20,),
            Text('General',style: primarytextstyle.copyWith(fontSize: 16,fontWeight: semibold),
            ),
            GestureDetector
            (onTap: () {
              Navigator.pushNamed(context, '/editprofile');
            },
              child: menuitem('Edit Profile',)),
            menuitem('Your Orders',),
            menuitem('Help',),
            SizedBox(height: 30,),
            Text('Account',style: primarytextstyle.copyWith(fontSize: 16,fontWeight: semibold),
            ),
            menuitem('Privacy & Policy',),
            menuitem('Terms Of Service',),
            menuitem('Rate App',),
          ],
        ),
      )
      );

    }

    return Column(
      children: [
        header(),
        content()
      ],
    );
  }
}
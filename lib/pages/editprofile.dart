import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    
    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(onPressed: () {Navigator.pop(context);
        }, icon: Icon(Icons.close),
        color: Colors.white,
        ),
        backgroundColor: bgcolor1 ,
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile',style: primarytextstyle.copyWith(fontSize: 18,fontWeight: medium),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.check,color: primarycolor,))
        ],
      );
    }
    

    Widget nameinput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name',style: secondarytextstyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primarytextstyle,
              decoration: InputDecoration(
                hintText: 'Oxxi Oxxi',hintStyle: primarytextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtittle)
                )
              ),
            )
          ],
        ),
      );
    }

Widget usernameinput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username',style: secondarytextstyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primarytextstyle,
              decoration: InputDecoration(
                hintText: '@Oxxi',hintStyle: primarytextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtittle)
                )
              ),
            )
          ],
        ),
      );
    }


    Widget emailinput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('E-mail',style: secondarytextstyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primarytextstyle,
              decoration: InputDecoration(
                hintText: 'Oxxiardhi@gmail.com',hintStyle: primarytextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtittle)
                )
              ),
            )
          ],
        ),
      );
    }


    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: defaultMargin),
              decoration: BoxDecoration(
                shape: BoxShape.circle,image: DecorationImage(image: AssetImage('assets/Profile - Default.png',),
                fit: BoxFit.cover,
                ),
              ),
            ),
            nameinput(),
            usernameinput(),
            emailinput()
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: bgcolor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
      
    );
  }
}
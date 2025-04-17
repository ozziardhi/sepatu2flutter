import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';
import 'package:tokosepatu/widgets/chattile.dart';


class Detailchatpage extends StatelessWidget {
  const Detailchatpage({super.key});

  @override
  Widget build(BuildContext context) {

  Widget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        centerTitle: true,
        title: Text('Message Support',
        style: primarytextstyle.copyWith(fontSize: 18,fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

  Widget emptychat() {
     return Expanded(child: 
    Container(
      width: double.infinity,
      color: bgcolor3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/Headset Icon.png', width: 80,),
        SizedBox(height: 20,),
        Text('Oppss No message yet',style: primarytextstyle.copyWith(

          fontSize: 16,
          fontWeight: medium,
        ),
        ),
        SizedBox(height: 12,
        ),
        Text('You have never done transaction',
        style: secondarytextstyle,
        ),
        SizedBox(height: 20,),
        Container(
          height: 44,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 10,
              ),
              backgroundColor: primarycolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
            child: Text(
              'Explore Store',
               style: primarytextstyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
               ),
              ),
          ),
        )
      ],
      ),
    ),
    );

  }

  Widget content() {
    return Expanded(child: 
    Container(
      width: double.infinity,
      color: bgcolor3,
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          Chattile(
            
          ),
        ],
      ),
    ),
    );
  }

   return Column(
    children: [
      header(),
      // emptychat()
      content(),
      
    ],
   );
  }
}
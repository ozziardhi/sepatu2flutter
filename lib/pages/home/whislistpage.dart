import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';
import 'package:tokosepatu/widgets/whislitcard.dart';

class Whislist extends StatelessWidget {
  const Whislist({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        centerTitle: true,
        title: Text('Favortie Shoes',style: primarytextstyle.copyWith(fontSize: 18,fontWeight: medium),),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
      
    }


    Widget emptywhislist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgcolor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Love Icon.png',width: 74,),
              SizedBox(height: 23,),
              Text('You don\'t have dream shoes ?',style: primarytextstyle.copyWith(fontSize: 16,fontWeight: medium),),
              SizedBox(height: 12,),
              Text('Let\'s find your dream shoes',style: secondarytextstyle,),
              SizedBox(height: 20,),
              Container(
                height: 44,
                child: TextButton(onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 24),
                  backgroundColor: primarycolor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Text('Explore store',style: primarytextstyle.copyWith(fontSize: 16,fontWeight: medium),)),
              )
            ],
          ),
        ),
        );
    }


    Widget content() {
      return Expanded(child: Container(
        color: bgcolor3,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Whislitcard(),
            Whislitcard(),
            Whislitcard()
          ],
        ),
      ),
      );
    }

    return Column(children: [
      header(),
      // emptywhislist()
      content()
    ],
    );
  }
}
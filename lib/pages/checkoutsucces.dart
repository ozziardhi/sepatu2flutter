import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';

class Successpage extends StatelessWidget {
  const Successpage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        centerTitle: true,
        title: Text('Checkout Succsess', style: primarytextstyle),
        elevation: 0,
      );
    }

    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Cart icon.png', width: 80),
            SizedBox(height: 20),
            Text(
              'You Made Transaction',
              style: primarytextstyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'kawekawke\nkawkekawek',
              style: secondarytextstyle,
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              width: 196,
              height: 44,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route)=>false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primarycolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Order Other Shoes',
                style: primarytextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              width: 196,
              height: 44,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff39374b),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('View my order',
                style: primarytextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                  color: Color(0xffb7b6bf) 
                ),),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor3,
      appBar: header(),
      body: content(),
    );
  }
}

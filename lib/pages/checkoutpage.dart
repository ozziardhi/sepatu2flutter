import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';
import 'package:tokosepatu/widgets/checkoutcard.dart';

class Checkoutpage extends StatelessWidget {
  const Checkoutpage({super.key});


  @override
  Widget build(BuildContext context) {
  PreferredSizeWidget header() {
    return AppBar(
      backgroundColor: bgcolor1,
      elevation: 0,
      centerTitle: true,
      title: Text('Checkout Details', style: primarytextstyle),
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        //todo : List Item
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Item',
                style: primarytextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Checkoutcard(),
              Checkoutcard(),
            ],
          ),
        ),
        //todo : Address Detail
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: bgcolor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adress Detail',
                style: primarytextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/Location Icon.png', width: 40),
                      Image.asset('assets/Line 1.png', height: 30),
                      Image.asset('assets/Location Icon.png', width: 40),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Store Location',
                        style: secondarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Kawe Core',
                        style: primarytextstyle.copyWith(fontWeight: light),
                      ),
                      SizedBox(height: defaultMargin),
                      Text(
                        'Your Location',
                        style: secondarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Bumi Anggrex',
                        style: primarytextstyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        //todo Payment summary
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: bgcolor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Summary',
                style: primarytextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Quantity',
                    style: secondarytextstyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    '2 Items',
                    style: primarytextstyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Price',
                    style: secondarytextstyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Rp.250.000',
                    style: primarytextstyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping ',
                    style: secondarytextstyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Free',
                    style: primarytextstyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Divider(thickness: 1, color: Color(0xff2e3141)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: pricetextstyle.copyWith(fontWeight: semibold),
                  ),
                  Text(
                    'Rp.250.000',
                    style: pricetextstyle.copyWith(fontWeight: semibold),
                  ),
                ],
              ),
            ],
          ),
        ),

        //todo Checkout Button
        SizedBox(height: defaultMargin),
        Divider(thickness: 1, color: Color(0xff2e3141)),
        Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: defaultMargin),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/succses-page', (route)=>false);
            },
            style: TextButton.styleFrom(
              backgroundColor: primarycolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Checkout Now',
              style: primarytextstyle.copyWith(
                fontWeight: semibold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

    return Scaffold(
      backgroundColor: bgcolor3,
      appBar: header(),
      body: content(),
    );
  }
}

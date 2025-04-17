import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';

class Productstile extends StatelessWidget {
  const Productstile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(                  //untuk menambahkan border radius digunakan cliprrect
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/image 6.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,),
            ),
            SizedBox(width: 12,),
            Expanded(
              child: Column
              (crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Footbal',style: secondarytextstyle.copyWith(fontSize: 12),
              ),
              SizedBox(height: 6,),
              Text('Lorem Ipsum dolor emet',
              style: primarytextstyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),),
               SizedBox(height: 6,),
               Text('Rp.200.000',
               style: pricetextstyle.copyWith(
                fontWeight: medium,
               ),)
            ],
            ),
            ),
          ],
        ),
      
      ),
    );
  }
}
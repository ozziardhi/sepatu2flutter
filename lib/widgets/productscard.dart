import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';

class Productcard extends StatelessWidget {
  const Productcard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(borderRadius: 
        BorderRadius.circular(20),
        color: Color(0xFFECEDEF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox( height: 30,),
            Image.asset('assets/image 6.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hiking',
                  style: secondarytextstyle.copyWith(
                    fontSize: 12,
                  ),
                  ),
                  SizedBox(height: 6,
                  ),
                  Text('Lorem Ipsum dolor',
                  style: blacktextstyle.copyWith(fontWeight: semibold,fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6,
                  ),
                  Text('Rp.500.000',style: pricetextstyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
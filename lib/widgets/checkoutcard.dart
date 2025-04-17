import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';

class Checkoutcard extends StatelessWidget {
  const Checkoutcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        color: bgcolor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage('assets/image 6.png')),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'KAWEKAWEHA',
                  style: primarytextstyle.copyWith(fontWeight: semibold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text('Rp.250.000',style: pricetextstyle,)
              ],
            ),
          ),
          SizedBox(width:12 ,), 
          Text(
            '2 Items',
            style: secondarytextstyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}

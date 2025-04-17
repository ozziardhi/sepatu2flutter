import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';

class Whislitcard extends StatelessWidget {
  const Whislitcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 10,left: 12,bottom: 14,right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgcolor4
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12 ),
            child: Image.asset('assets/image 6.png',width: 60,),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('kawekaweha',style: primarytextstyle.copyWith(fontWeight: semibold),
                ),
                Text('Rp.500.000',style: pricetextstyle,)
              ],
            ),
          ),
          Image.asset('assets/Love Icon.png',width: 34,)
        ],
      ),
    );
  }
}
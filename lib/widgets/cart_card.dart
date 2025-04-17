import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(color: bgcolor4),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/image 6.png'),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terrex urban Lowwwww',
                      style: primarytextstyle.copyWith(fontWeight: semibold),
                    ),
                    Text('Rp.200.000', style: pricetextstyle),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset('assets/Add Jumlah Item.png', width: 16),
                  SizedBox(height: 2),
                  Text(
                    '3',
                    style: primarytextstyle.copyWith(fontWeight: medium),
                  ),
                  SizedBox(height: 2),
                  Image.asset('assets/Reduce Jumlah Item.png', width: 16),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Image.asset('assets/Subtract.png', width: 10),
              SizedBox(width: 4),
              Text(
                'Remove',
                style: alerttextstyle.copyWith(fontWeight: light, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

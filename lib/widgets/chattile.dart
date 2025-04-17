import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';

class Chattile extends StatelessWidget {
  const Chattile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat');
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 33,
        ),
        child: Column(
          
          children: [Row(
            children: [
              Image.asset('assets/Logo Shop Picture.png',
              width: 54,),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Shoe Store',style: primarytextstyle.copyWith(fontSize: 15),),
                  Text('Lorem ispusm dolor amet',style: secondarytextstyle.copyWith(fontWeight: light),
                  overflow: TextOverflow.ellipsis,
                  ),
                ],
                ),
              ),
              Text('Now',style: secondarytextstyle.copyWith(fontSize: 10),)
            ],
          ),
          SizedBox(height: 12,),
          Divider(
            thickness: 1,
            color: Color(0XFF2b2939),
          )
          
          ],
        ),
      ),
    );
  }
}
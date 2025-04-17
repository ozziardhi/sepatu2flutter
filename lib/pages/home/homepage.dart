import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';
import 'package:tokosepatu/widgets/productscard.dart';
import 'package:tokosepatu/widgets/productstile.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});
 
  @override

  Widget build(BuildContext context) {


 Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text('Hallo'
                ,style: primarytextstyle.copyWith(
                  fontSize: 24,
                  fontWeight: semibold,
                ),
                ),
                Text('@oxxi',
                style: subtittletextstyle.copyWith(
                  fontSize: 16,
                )),
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image:AssetImage('assets/Username_Icon.png'))
            ),
          ),
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primarycolor,
              ),
              child: Text(
                'All Shoes',
                style: primarytextstyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                )
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:Border.all(
                  color: subtittle,
                ),
                color: transparan,
              ),
              child: Text(
                'Running',
                style: subtittletextstyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                )
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:Border.all(
                  color: subtittle,
                ),
                color: transparan,
              ),
              child: Text(
                'training',
                style: subtittletextstyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                )
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:Border.all(
                  color: subtittle,
                ),
                color: transparan,
              ),
              child: Text(
                'Bassket Ball',
                style: subtittletextstyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                )
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:Border.all(
                  color: subtittle,
                ),
                color: transparan,
              ),
              child: Text(
                'Hiking',
                style: subtittletextstyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                )
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget popularproducts() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin,
      left: defaultMargin,
      right: defaultMargin,
      ),
      child: Text('popular products',
      style: primarytextstyle.copyWith(
        fontSize: 22,
        fontWeight: semibold,
      ),
      ),
    );
  }

  Widget popularproductsimage() {
    return Container(
      margin: EdgeInsets.only(top: 14
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin,
            ),
            Row(children: [
              Productcard(),
              Productcard(),
              Productcard(),

            ],
            ),
          ],
        ),
      ),
    );
  }

  Widget newArrival() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin,
      left: defaultMargin,
      right: defaultMargin,
      ),
      child: Text('New Arrivals',
      style: primarytextstyle.copyWith(
        fontSize: 22,
        fontWeight: semibold,
      ),
      ),
    );
  }


  Widget newArrivalItems() {
    return Container(
      margin: EdgeInsets.only(
        top: 14,
      ),
      child: Column(
        children: [
          Productstile(),
          Productstile(),
          Productstile(),
          Productstile(),
        ],
      ),
    );
  }

    return ListView(
      children: [
        header(),
        categories(),
        popularproducts(),
        popularproductsimage(),
        newArrival(),
        newArrivalItems(),
        

      ],
    );
  }
}
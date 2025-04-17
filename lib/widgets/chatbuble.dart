import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tokosepatu/theme.dart';

class ChatBubble extends StatelessWidget {

  final String text;
  final bool isSender;
  final bool hasproduct;

  ChatBubble({this.isSender=false,this.text='',this.hasproduct=false});


  @override
  Widget build(BuildContext context) {

    Widget productprefiew() {
      return Container(
        width: 230,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 12:0),
                  topRight: Radius.circular(isSender ? 0:12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color:isSender ? bgcolor5:bgcolor4,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('assets/image 6.png',width: 70,),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('COURT VISION 2.0 SHOES ',style: primarytextstyle,),
                            SizedBox(
                              height: 4,
                            ),
                            Text('Rp.350.000',style: pricetextstyle.copyWith(fontWeight: medium),)
                          ],
                        ),
                        ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(onPressed: () {}, 
                        style: OutlinedButton.styleFrom(side: BorderSide(
                          color: primarycolor,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                        ),
                        child: FittedBox(
                          child: Text('Add to cart',style: purpletextstyle,
                          ),
                        ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextButton(onPressed: () {}, 
                      style: TextButton.styleFrom(
                        backgroundColor: primarycolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('Buy Now',
                      style: GoogleFonts.poppins(
                        color: bgcolor5,
                        fontWeight: medium,
                      ),
                      
                      ),
                      ),
                    ],
                  )
                ],
              ),
      );

    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: isSender ? CrossAxisAlignment.end:CrossAxisAlignment.start,
        children: [
          hasproduct ? productprefiew():SizedBox(),
          Row(
            mainAxisAlignment:isSender? MainAxisAlignment.end :MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.5),
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12:0),
                      topRight: Radius.circular(isSender ? 0:12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color:isSender ? bgcolor5:bgcolor4,
                  ),
                  child: Text(
                    text,
                    style: primarytextstyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
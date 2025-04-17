import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';
import 'package:tokosepatu/widgets/chatbuble.dart';



class Detailchatpage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    PreferredSize header() {
      return PreferredSize(preferredSize: Size.fromHeight(70),
       child: AppBar(
        backgroundColor: bgcolor1,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset('assets/Group 1348.png',width: 50,),
            SizedBox(width:12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shoe store',style: primarytextstyle.copyWith(fontWeight: medium,fontSize: 15),),
                Text('Online',style: secondarytextstyle.copyWith(fontWeight: light,fontSize: 14),)
              ],
            )
          ],
        ),
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 255, 255, 255),
        ),
       )
       );
       
    }


    Widget productreview() {
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgcolor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primarycolor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/image 6.png',width: 54,),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('COURT VISON',style: primarytextstyle,overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 2,),
                  Text('Rp.250.000',style: pricetextstyle.copyWith(fontWeight: medium),
                  ),
                  
                ],
                ),
              ),
              Image.asset('assets/Group 15.png',width: 22,)
          ],
        ),
      );
    }

    Widget chatinput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 16,),
                    decoration: BoxDecoration(
                      color: bgcolor4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message....',
                          hintStyle: subtittletextstyle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset('assets/Send Button.png',width: 45,)
              ],
            ),
          ],
        ),
      );
    }

   Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: [
        ChatBubble(
          isSender: true,
          text: 'Hi, Is this item still available ?',
          hasproduct: true,
        ),
        ChatBubble(
          isSender: false,
          text: 'Hello, This item is only available in size 42 and 43',
        ),
      ],
    );
   }

    return Scaffold(
      backgroundColor: bgcolor3,
      appBar: header(),
      bottomNavigationBar: chatinput(),
      body: content(),
    
      
      
    );
  }
}
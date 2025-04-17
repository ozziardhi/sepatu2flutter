import 'package:flutter/material.dart';
import 'package:tokosepatu/theme.dart';


class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: 30) ,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            'Login',
          style: primarytextstyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Sign in to continue',
            style: subtittletextstyle,
          ),                      
        ],
      ),
    );
  }

    Widget emailinput() {
      return Container(
        margin: EdgeInsets.only(top:70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('E-mail Address',
            style: primarytextstyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            ),
            SizedBox(
              height: 12,

            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: bgcolor2,
                borderRadius:BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/Email_Icon.png',width: 20,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primarytextstyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: subtittletextstyle, 
                        ),
                      ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordinput() {     
      return Container(
        margin: EdgeInsets.only(top:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password',
            style: primarytextstyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            ),
            SizedBox(
              height: 12,

            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: bgcolor2,
                borderRadius:BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/Password_Icon.png',width: 20,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primarytextstyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: subtittletextstyle, 
                        ),
                      ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signinbutton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child:Text(
            'Sign in',
            style: primarytextstyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ) ,
          ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(
            'Don\'t have account? ' ,style: subtittletextstyle.copyWith(fontSize: 15),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/signupp');
            },
            child: Text('Sign Up',
            style:purpletextstyle.copyWith(
              fontSize: 15,
              fontWeight: medium,
            ) ,
            ),
          ),
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor:bgcolor1 ,
      resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailinput(),
              passwordinput(),
              signinbutton(),
              Spacer(),
              footer(),

              
            ],
          ),
        ),
      ),
    );
  }
}

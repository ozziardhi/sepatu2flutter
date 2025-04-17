import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokosepatu/providers/auth_provider.dart';
import 'package:tokosepatu/theme.dart';


class Signup extends StatelessWidget {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');


  @override
  Widget build(BuildContext context) {
  AuthProvider authProvider = Provider.of<AuthProvider>(context);

   void handleSignUp() async{
      if (await authProvider.register(
      name: nameController.text, 
      username: usernameController.text, 
      email: emailController.text,
       password: passwordController.text))
       {
        Navigator.pushNamed(context, '/home');
       }
      
    }

    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: 30) ,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            'Sign-Up',
          style: primarytextstyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Sign-Up and Happy Shopping',
            style: subtittletextstyle,
          ),                      
        ],
      ),
    );
  }


    Widget nameinput() {
      return Container(
        margin: EdgeInsets.only(top:50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Full Name',
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
                    Image.asset('assets/Username_Icon.png',width: 20,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primarytextstyle,
                        controller: nameController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Full Name',
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

    Widget usernameinput() {
      return Container(
        margin: EdgeInsets.only(top:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username',
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
                    Image.asset('assets/Union.png',width: 20,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primarytextstyle,
                        controller: usernameController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Username',
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

    Widget emailinput() {
      return Container(
        margin: EdgeInsets.only(top:20),
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
                        controller: emailController,
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
                        controller: passwordController,
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

    Widget signupbutton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: handleSignUp,
          style: TextButton.styleFrom(
            backgroundColor: primarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child:Text(
            'Sign Up',
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
            'Already Have an Account? ' ,style: subtittletextstyle.copyWith(fontSize: 15),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text('Sign in',
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
              nameinput(),
              usernameinput(),
              emailinput(),
              passwordinput(),
              signupbutton(),
              Spacer(),
              footer(),

              
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tokosepatu/pages/home/chatpage.dart';
import 'package:tokosepatu/pages/home/homepage.dart';
import 'package:tokosepatu/pages/home/profilepage.dart';
import 'package:tokosepatu/pages/home/whislistpage.dart';
import 'package:tokosepatu/theme.dart';


class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {


  int currentIndex = 0;



  @override
  Widget build(BuildContext context) {

    Widget cartbutton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        shape: const CircleBorder(),
        backgroundColor: secondarycolor,
        child: Image.asset(
          'assets/Cart.png',
          ),
        
        );
    }




    Widget custombuttonnav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: bgcolor4,
          currentIndex: currentIndex,
          onTap: (value) {
            
            setState(() {
              currentIndex =value;
            });
          },
          type: BottomNavigationBarType.fixed,          //perhatikan ini
          items: [
          BottomNavigationBarItem
          (icon: Container(
            margin: EdgeInsets.only(
              top: 25,
              bottom: 10,
              ),
            child: Image.asset('assets/Home.png',
            width: 23,
            color: currentIndex==0?primarycolor : Color(0xff808191),
            ),
          ),
          label: '',
          ),
           BottomNavigationBarItem
           (icon: Container(margin: EdgeInsets.only(
              top: 25,
              bottom: 10,
              ),
             child: Image.asset('assets/Chat Icon.png',
                       width: 23,
                       color: currentIndex==1?primarycolor : Color(0xff808191),
                       ),
           ),
          label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(margin: EdgeInsets.only(
              top: 25,
              bottom: 10,
              ),
              child: Image.asset('assets/Union (2).png',
                        width: 23,
                        color: currentIndex==2?primarycolor : Color(0xff808191),
                        ),
            ),
          label: '',
          ),
          BottomNavigationBarItem(
                    icon: Container(margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
              ),
                      child: Image.asset('assets/Profile.png',
                                width: 20,
                                color: currentIndex==3?primarycolor : Color(0xff808191),
                                ),
                    ),
          label: '',
          ),
        ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:return Homepage();
        case 1:return Detailchatpage();
        case 2:return Whislist();  
        case 3:return Profilepage();  
        default:return Center(child: Text("Halaman tidak ditemukan")); // Tambahkan return di default case
      }
    }


   

    return Scaffold(
      backgroundColor: currentIndex == 0 ? bgcolor1:bgcolor3,
      floatingActionButton: cartbutton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: custombuttonnav(),
      body: body(), 
    );
  }
}
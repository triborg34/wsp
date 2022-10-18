// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wspwebsite/constracts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthof = MediaQuery.of(context).size.width;
    double hightof = MediaQuery.of(context).size.height;
    
    
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(choice),
            fit: BoxFit.cover,
          )),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              )),
        ),
        Center(
          child: SingleChildScrollView(
            child: Container(
              // width: widthof * 0.3,
              // height: hightof * 0.8,
              width: widthof >= 600 ? 400 : 300,
              height: hightof>920 ? 850:800,

              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      width: 10, color: backcolors.withOpacity(0.8))),

              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: backcolors,
                        ),
                        SizedBox(width: widthof >= 600 ? 125 : 75),
                        Container(
                          height: 10,
                          width: 80,
                          decoration: BoxDecoration(
                              color: backcolors,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      color: backcolors,
                    ),
                  ),Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: Text(
                        "Wrestiling Streaming Platform ",
                        style: TextStyle(
                          fontFamily: "bigjohn",
                          
                            fontSize: widthof>600 ?14 :10,
                            fontWeight: FontWeight.bold,
                            height: 2),
                        textDirection: TextDirection.rtl,
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: Text(
                        "یک سرویس نمایش مسابقات کشتی کج به صورت آنلاین است که قابلیت دانلود را نیز دارد، این سرویس تمامی مسابقات روز را در سریع ترین زمان ممکن قرار میدهد.",
                        style: TextStyle(
                          
                            fontSize: widthof>600 ?18 :14,
                            fontWeight: FontWeight.bold,
                            height: 2),
                        textDirection: TextDirection.rtl,
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  MyButtons(
                    color: Colors.green[700],
                    text: "دریافت مستقیم فایل apk اندروید ",
                    myicon: Icons.android_outlined,
                    Myhight: hightof,
                    Mywidht: widthof,
                    url:Uri.parse('/file/wspApp.apk'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyButtons(
                    color: Colors.black,
                    text: "دریافت برای ios از AppleStore",
                    myicon: Icons.apple_outlined,
                    Myhight: hightof,
                    Mywidht: widthof,
                    url: Uri.parse(''),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, right: 20),
                        child: Text(
                          "ارتباط با ما:",
                          style: TextStyle(
                              fontSize: widthof >= 600? 24:18, fontWeight: FontWeight.bold,fontFamily: 'btitr'),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                  ContactUsWidget(
                    text: "@gun0916",
                    myColors: Colors.blue[900],
                    myIcons: Icons.telegram_outlined,
                    Myhight: hightof,
                    Mywidht: widthof,
                  ),
                  ContactUsWidget(
                    text: "Aref.Mousavi0914@gmail.com",
                    myColors: Colors.red[900],
                    myIcons: Icons.email_outlined,
                    Myhight: hightof,
                    Mywidht: widthof,
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class ContactUsWidget extends StatelessWidget {
  IconData? myIcons;
  String? text;
  Color? myColors;
  double? Mywidht;
  double? Myhight;

  ContactUsWidget(
      {Key? key,
      this.myIcons,
      this.text,
      this.myColors,
      this.Myhight,
      this.Mywidht})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 10),
      child: Row(
        children: [
          Icon(
            myIcons,
            size: 40,
            color: myColors,
          ),
          Text(
            text!,
            style: TextStyle(color: myColors, fontSize: Mywidht! >= 600? 20:13,),
          )
        ],
      ),
    );
  }
}


//my buttons
class MyButtons extends StatelessWidget {
  Color? color;
  String? text;
  IconData? myicon;
  double? Mywidht;
  double? Myhight;
  Uri? url;
  MyButtons(
      {Key? key,
      this.color,
      this.text,
      this.myicon,
      this.Myhight,
      this.Mywidht,
      this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 50,
      child: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: color!,
          ),
          onPressed: () async{
            launchUrl(url!,);
            
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(myicon!, size: 28),
              Text(
                text!,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: Mywidht! >= 600? 18:12),
              ),
              SizedBox(
                width: 5,
              )
            ],
          )),
    );
  }
}

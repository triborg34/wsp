import 'dart:math';

import 'package:flutter/material.dart';

List backGroundImages=['/images/backgrond.jpg','/images/nxt.jpg','/images/raw.jpg','/images/smackdown.png'];

final _random=Random();
String choice=backGroundImages[_random.nextInt(backGroundImages.length)];

Color? foo(String choices){
  if (choices=='/images/backgrond.jpg'){
    return Colors.black;
  }
  else if(choices=='/images/nxt.jpg'){
    return Colors.yellow[900];
  }
  else if(choices=='/images/raw.jpg'){
    return Colors.red[900];
  }
  else{
    return Colors.blue[900];
  }
  

}

Color backcolors=foo(choice)!;

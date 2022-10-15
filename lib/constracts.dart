import 'dart:math';

import 'package:flutter/material.dart';

List backGroundImages=['assets/images/backgrond.jpg','assets/images/nxt.jpg','assets/images/raw.jpg','assets/images/smackdown.png'];

final _random=Random();
String choice=backGroundImages[_random.nextInt(backGroundImages.length)];

Color? foo(String choices){
  if (choices=='assets/images/backgrond.jpg'){
    return Colors.black;
  }
  else if(choices=='assets/images/nxt.jpg'){
    return Colors.yellow[900];
  }
  else if(choices=='assets/images/raw.jpg'){
    return Colors.red[900];
  }
  else{
    return Colors.blue[900];
  }
  

}

Color backcolors=foo(choice)!;

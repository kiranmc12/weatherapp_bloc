import 'package:flutter/material.dart';

String API_KEY = "cf7005022ac7edf72bb618b14b6f33aa";

const kblack = Colors.black;
const ktransparent = Colors.transparent;
late double sHeight;
late double sWidth;

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight50 = SizedBox(height: 50);
const kHeight100 = SizedBox(height: 50);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

const kRadius5 = Radius.circular(5);
const kRadius10 = Radius.circular(10);
const kRadius20 = Radius.circular(20);
const kRadius50 = Radius.circular(50);

const Color kWhite = Colors.white;

TextStyle priceStyleCross = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sWidth * 0.040,
    color: kblack.withOpacity(0.7),
    decoration: TextDecoration.lineThrough);

Widget getWeatherIcon(int code) {
  switch (code) {
    case >= 200 && < 300:
      return Image.asset('assets/1.png');
    case >= 300 && < 400:
      return Image.asset('assets/2.png');
    case >= 500 && < 600:
      return Image.asset('assets/3.png');
    case >= 600 && < 700:
      return Image.asset('assets/4.png');
    case >= 700 && < 800:
      return Image.asset('assets/5.png');
    case == 800:
      return Image.asset('assets/6.png');
    case > 800 && <= 804:
      return Image.asset('assets/7.png');
    default:
      return Image.asset('assets/7.png');
  }
}

String getGreeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good morning!';
  } else if (hour < 17) {
    return 'Good afternoon!';
  } else if (hour < 20) {
    return 'Good evening!';
  } else {
    return 'Good night!';
  }
}

import 'package:intl/intl.dart';

String currentGreeting() {
  var greeting = '';

  final currTime = DateTime.now();
  if (currTime.hour < 10) {
    greeting = 'Pagi';
  } else if (currTime.hour < 14) {
    greeting = 'Siang';
  } else if (currTime.hour < 18) {
    greeting = 'Sore';
  } else {
    greeting = 'Malam';
  }

  return greeting;
}
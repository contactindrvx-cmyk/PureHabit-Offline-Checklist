import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart'; // ایڈموب کا پیکج
import 'package:habit_it/app.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // گوگل ایڈموب کو سٹارٹ کرنے کا مین سوئچ
  await MobileAds.instance.initialize();
  
  await di.init();
  runApp(const HabitItApp());
}

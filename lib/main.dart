import 'package:dailyfood/screens/main-screen.dart';
import 'package:dailyfood/screens/splash-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (_) => runApp(DailyFoodApp()),
  );
}

class DailyFoodApp extends StatefulWidget {
  @override
  _DailyFoodAppState createState() => _DailyFoodAppState();
}

class _DailyFoodAppState extends State<DailyFoodApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => SplashScreen(),
        '/main': (_) => MainScreen(),
      },
    );
  }
}

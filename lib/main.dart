import 'package:bai_choi/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bai_choi/screens/home/index.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        // textTheme: GoogleFonts.timmanaTextTheme.;
      ),
      home: HomeScreen(),
      // initialRoute: '/',
      // routes:{
      //   '/':(context) => SignInScreen(),
      //   '/home':(context) => HomeScreen(),
      //   '/sign_up':(context) => SignUpScreen(),
      // },
    );
  }
}

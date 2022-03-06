import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rootdev/contact_view.dart';
import 'package:rootdev/inicio_view.dart';
import 'package:rootdev/metodologia_view.dart';
import 'package:rootdev/servicios_view.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,white}) : super(key: key);
  final MaterialColor white = const MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50:   Color(0xFFFFFFFF),
      100:  Color(0xFFFFFFFF),
      200:  Color(0xFFFFFFFF),
      300:  Color(0xFFFFFFFF),
      400:  Color(0xFFFFFFFF),
      500:  Color(0xFFFFFFFF),
      600:  Color(0xFFFFFFFF),
      700:  Color(0xFFFFFFFF),
      800:  Color(0xFFFFFFFF),
      900:  Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 1280),
      builder: () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          unknownRoute: GetPage(name: '/notfound',page:() => Container(child: Text('404'),),),
          routes: {
            '/': (context) => Inicio(),
            '/servicios': (context) => const Servicios(),
            '/metodologia': (context) => const Metodologia(),
            '/contact': (context) => const ContactView(),
          },
          theme: ThemeData(
            primarySwatch: white,
          ),
        );
      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Inicio();
  }
}

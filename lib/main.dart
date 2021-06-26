import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/base/base_screen.dart';
import 'package:loja_virtual/models/user_manager.dart';
import 'package:provider/provider.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) => UserManager(),
        child: MaterialApp(
          title: 'Loja',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: const Color.fromARGB(255, 4, 125, 141),
            scaffoldBackgroundColor: const Color.fromARGB(255, 4, 125, 141),
            appBarTheme: const AppBarTheme(elevation: 0),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: BaseScreen(),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import provider package
import 'package:skl_pertama/routes.dart';
import 'package:skl_pertama/screens/splash/splash_screen.dart';
import 'package:skl_pertama/theme.dart';
import 'package:skl_pertama/models/cart_model.dart'; // Import CartModel

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(), // Menggunakan CartModel sebagai provider
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: theme(),
        // home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todome/screens/chatpage.dart';
import 'package:todome/screens/tskpage.dart';
import 'models/dataprovider.dart';
import 'provider/chatprovider.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return ChangeNotifierProvider(
      create: (context) => chat(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home:ChatPage(),
      ),
    );
  }
}

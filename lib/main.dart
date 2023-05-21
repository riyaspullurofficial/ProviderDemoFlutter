import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/provider/provider_demo2.dart';
import 'package:providerdemo/provider/providerdemo.dart';
import 'package:providerdemo/ui/page1.dart';

void main() {
  runApp(const MyApp());
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderDemo(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Page1(),
      ),
    );
  }
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context)=>ProviderDemo(),),
        ChangeNotifierProvider(create: (context)=>ProviderDemo2(),)

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Page1(),
      ),
    );
  }
}

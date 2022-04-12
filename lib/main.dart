import 'package:flutter/material.dart';
import 'package:instaclone/pages/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Firestore.instance.settings().then((_) {
    print("Timestamps enabled in snapshots\n");
  }, onError: (_) {
    print("there was an error enabling timestams in snapshots");
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Share',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.transparent,
      ),
      home: Home(),
    );
  }
}

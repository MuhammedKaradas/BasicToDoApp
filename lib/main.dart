import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo/anasayfa.dart';
import 'package:todo/kayitekrani.dart';

void main() {
  runApp(Yapilacaklar());
}

class Yapilacaklar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFE0C332),
      ),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (context, kullaniciVerisi) {
          if (kullaniciVerisi.hasData) {
            return AnaSayfa();
          } else {
            return KayitEkrani();
          }
        },
      ),
    );
  }
}

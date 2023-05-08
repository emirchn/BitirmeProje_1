import 'package:bitirme_projesi/gorunum/listView.dart';
import 'package:bitirme_projesi/sayfalar/haber_sayfasi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ana Sayfa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ListViewModel(),
        child: const AnaSayfa(),
      ),
    );
  }
}


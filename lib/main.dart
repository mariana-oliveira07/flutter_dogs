import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  // verificar se está em um ambiente desktop (windows, Linux,  macOS)
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    //nicializa o factory do banco de bancos para o uso com sqflite_common_ffi
    sqfliteFfiInit();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DogPageForm(),
    );
  }
}

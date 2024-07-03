import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_presentation/view/ui_view.dart';
import 'package:ui_presentation/view_model/ui_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('Building MyApp widget...');
    return
      MultiProvider(
        providers : [
          ChangeNotifierProvider(
              create: (_) => viewModel())
        ],
      child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const PageUI(),)
    );
  }
}



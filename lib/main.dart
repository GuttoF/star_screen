import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const HighlightedColumnScreen(),
    );
  }
}

class HighlightedColumnScreen extends StatelessWidget {
  const HighlightedColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela com Coluna Destacada'),
      ),
      body: Row(
        children: <Widget>[
          // Coluna da Esquerda (será destacada)
          Expanded(
            flex: 1, // Define a proporção do espaço que a coluna ocupa
            child: Container(
              color: Colors.lightGreenAccent,
              child: const Center(child: Text('Coluna Esquerda')),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.lightBlueAccent,
              child: const Center(child: Text('Coluna Direita')),
            ),
          ),
        ],
      ),
    );
  }
}
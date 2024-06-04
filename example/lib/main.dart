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
      title: 'Packages Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StatusEditorPackage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StatusEditorPackage extends StatefulWidget {
  const StatusEditorPackage({super.key});

  @override
  State<StatusEditorPackage> createState() => _StatusEditorPackageState();
}

class _StatusEditorPackageState extends State<StatusEditorPackage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Status editor",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:whatsapp_status_editor/whatsapp_status_editor.dart';

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
  State<StatusEditorPackage> createState() => _SatusyEditorPackageState();
}

class _SatusyEditorPackageState extends State<StatusEditorPackage> {
  bool isThumbnail = true;
  File filePath = File("");

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Story editor",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    color: Colors.blue,
                    clipBehavior: Clip.antiAlias, // Add This
                    child: MaterialButton(
                      minWidth: 200.0,
                      height: 45,
                      color: Colors.blue,
                      child: const Text('Story editor',
                          style:
                              TextStyle(fontSize: 16.0, color: Colors.white)),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StoryTextEditor(),
                          ),
                        ).then((res) async {
                          print(res);
                          if (res != null) {
                            print(res);
                            filePath = res;
                            setState(() {});
                          }
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (filePath.path != '')
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.file(
                      File(
                        filePath.path,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

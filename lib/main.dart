import 'package:flutter/material.dart';
import 'package:test_lab/widgets/common_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEST LAB',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TEST LAB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[200],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // DialogContainer1(),
          ElevatedButton(
              onPressed: () => showCommonDialog(
                  context: context,
                  background: DialogContainerBackground.dialogContainerSquare,
                  builder: (BuildContext buildContext) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("asdfjkhasdf"),
                          Text(
                            "asdfjkhasdf",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.normal),
                          ),
                          Text("asdfjkhasdfaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),
                          Text("asdfjkhasdf"),                          
                          
                        ],
                      )),
              child: const Text("asdfjkhasdf"))
        ],
      )),
    );
  }
}

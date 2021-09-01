import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_lab/widgets/common_bottom_sheet.dart';

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
          child: GestureDetector(
        onTap: () => showCommonBottomSheet(
            constraints: BoxConstraints.loose(Size(
                MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height * 0.75)),
            fauliHeader: true,
            context: context,
            isScrollControlled: true,
            builder: (buildContext) => Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Wähle dein Profilbild.",
                        style: TextStyle(
                            fontSize: 15, // TODO set font size to 40
                            fontWeight: FontWeight.bold,
                            color: Colors.black), // TODO set font
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            ProfileCircleItem(),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: ProfileCircleItem(),
                            ),
                            ProfileCircleItem(),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            ProfileCircleItem(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: ProfileCircleItem(),
                            ),
                            ProfileCircleItem(
                              visible: false,
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            ProfileCircleItem(),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: ProfileCircleItem(),
                            ),
                            ProfileCircleItem(),
                          ],
                        ),
                      ),
                      // Text("data"),
                      // Text("data"),
                      // Text("data"),
                      // Text("data"),
                      // Text("data")
                    ],
                  ),
                )),
        child: Container(
          color: Colors.red,
          height: 130,
          width: 120,
          child: const Center(
            child: Text("press"),
          ),
        ),
      )),
    );
  }
}

class ProfileCircleItem extends StatefulWidget { // TODO u have to wrap the items in some widget to implement selection
  const ProfileCircleItem({Key? key, this.visible = true}) : super(key: key);

  final bool visible;

  @override
  _ProfileCircleItemState createState() => _ProfileCircleItemState();
}

class _ProfileCircleItemState extends State<ProfileCircleItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Opacity(
        opacity: widget.visible ? 1 : 0.4,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.25 + 6,
          height: MediaQuery.of(context).size.width * 0.25 + 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: const Center(
                child: Text("item"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


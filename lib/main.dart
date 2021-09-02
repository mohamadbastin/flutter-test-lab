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
  int controller = 0;
  _do() {
    showCommonBottomSheet(
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
                  ProfileItmes(controller: controller, invisibles: const [1, 7])

                  // Text("data"),
                  // Text("data"),
                  // Text("data"),
                  // Text("data"),
                  // Text("data")
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[200],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () => _do(),
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

// ignore: must_be_immutable
class ProfileCircleItem extends StatefulWidget {
  ProfileCircleItem(
      {Key? key,
      this.visible = true,
      required this.index,
      required this.controller})
      : super(key: key);

  final bool visible;
  int index;
  // ignore: prefer_typing_uninitialized_variables
  var controller;

  @override
  _ProfileCircleItemState createState() => _ProfileCircleItemState();
}

class _ProfileCircleItemState extends State<ProfileCircleItem> {
  bool selected = false;
  // Color circle_color = Colors.transparent;

  bool _check() {
    // print(widget.controller);
    if (widget.controller == widget.index) {
      // widget.controller = -1;
      return true;
    } else {
      // widget.controller = widget.index;
      return false;
    }

    // print(widget.controller);
    // selected = !selected;
    // if (widget.visible) {
    //   if (selected && widget.controller == widget.index) {
    //     setState(() {
    //     });
    //   } else {
    //     setState(() {
    //       circle_color = Colors.transparent;
    //     });
    //   }
    // }
  }

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
            color: widget.visible
                ? _check()
                    ? Colors.orange
                    : Colors.transparent
                : Colors.transparent, // TODO set color instead of orange
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

// ignore: must_be_immutable
class ProfileItmes extends StatefulWidget {
  /// `controller`: Pass and int typed variable for retrieving the selected item.
  ///
  /// `invisibles`: Pass the list of not selectable items 1 through 9;
  ProfileItmes({Key? key, required this.controller, this.invisibles})
      : super(key: key);

  /// Pass and int typed variable for retrieving the selected item.
  int controller;
  final List<int>? invisibles;

  @override
  _ProfileItmesState createState() => _ProfileItmesState();
}

class _ProfileItmesState extends State<ProfileItmes> {
  var index = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: ProfileCircleItem(
                  index: 1,
                  controller: index,
                  visible: widget.invisibles!.contains(1) ? false : true,
                ),
                onTap: () {
                  setState(() {
                    index = 1;
                    widget.controller = 1;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  child: ProfileCircleItem(
                      index: 2,
                      controller: index,
                      visible: widget.invisibles!.contains(2) ? false : true),
                  onTap: () {
                    setState(() {
                      index = 2;
                      widget.controller = 2;
                    });
                  },
                ),
              ),
              GestureDetector(
                child: ProfileCircleItem(
                    index: 3,
                    controller: index,
                    visible: widget.invisibles!.contains(3) ? false : true),
                onTap: () {
                  setState(() {
                    index = 3;
                    widget.controller = 3;
                  });
                },
              ),
            ],
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: ProfileCircleItem(
                    index: 4,
                    controller: index,
                    visible: widget.invisibles!.contains(4) ? false : true),
                onTap: () {
                  setState(() {
                    index = 4;
                    widget.controller = 4;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  child: ProfileCircleItem(
                      index: 5,
                      controller: index,
                      visible: widget.invisibles!.contains(5) ? false : true),
                  onTap: () {
                    setState(() {
                      index = 5;
                      widget.controller = 5;
                    });
                  },
                ),
              ),
              GestureDetector(
                child: ProfileCircleItem(
                    index: 6,
                    controller: index,
                    visible: widget.invisibles!.contains(6) ? false : true),
                onTap: () {
                  setState(() {
                    index = 6;
                    widget.controller = 6;
                  });
                },
              ),
            ],
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: ProfileCircleItem(
                    index: 7,
                    controller: index,
                    visible: widget.invisibles!.contains(7) ? false : true),
                onTap: () {
                  setState(() {
                    index = 7;
                    widget.controller = 7;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  child: ProfileCircleItem(
                      index: 8,
                      controller: index,
                      visible: widget.invisibles!.contains(8) ? false : true),
                  onTap: () {
                    setState(() {
                      index = 8;
                      widget.controller = 8;
                    });
                  },
                ),
              ),
              GestureDetector(
                child: ProfileCircleItem(
                    index: 9,
                    controller: index,
                    visible: widget.invisibles!.contains(9) ? false : true),
                onTap: () {
                  setState(() {
                    index = 9;
                    widget.controller = 9;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

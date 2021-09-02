import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_lab/widgets/common_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          child: Stack(
        fit: StackFit.passthrough,
        children: [
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 50,
              width: 5,
              child: Container(
                color: Colors.black,
                child: const Center(
                  child: Text(""),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // DialogContainer1(),
                ElevatedButton(
                    onPressed: () => showCommonDialog(
                        context: context,
                        background: DialogContainerBackground
                            .dialogContainerVerticalSize4,
                        header: DialogHeader.fauliDefault,
                        builder: (BuildContext buildContext) => Padding(
                              padding: const EdgeInsets.only(
                                  top: 30.0, left: 10, right: 10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Kummerkasten",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      child: Text(
                                          "Mache eine schnelle Übung um dich auf andere Gedanken zu bringen."),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Center(
                                        child: Container(
                                          color: Colors.orange,
                                          height: 65,
                                          width: 155,
                                          child: const Center(
                                            child: Text("Zum Kummerkasten"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Divider(
                                        thickness: 1,
                                        color: Color(0xFFC2AD8D),
                                      ),
                                    ),
                                    const Text(
                                      "Krisenchat",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      child: Text(
                                          "Das Team vom Krisenchat hilft dir kostenlos über WhatsApp weiter."),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Center(
                                        child: Container(
                                          color: Colors.orange,
                                          height: 65,
                                          width: 155,
                                          child: const Center(
                                            child: Text("Zum Krisenchat"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Divider(
                                        thickness: 1,
                                        color: Color(0xFFC2AD8D),
                                      ),
                                    ),
                                    const Text(
                                      "Telefonhilfe",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      child: Text(
                                          "Erhalte kostenlose telefonische Beratung in schwierigen Situationen."),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                                      child: Center(
                                        child: Container(
                                          color: Colors.orange,
                                          height: 65,
                                          width: 155,
                                          child: const Center(
                                            child: Text("Zur Telefonhilfe"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // const Center(
                                    //   child: Divider(
                                    //     thickness: 2,
                                    //     color: Color(0xFFC2AD8D),
                                    //   ),
                                    // )
                                  ]),
                            )),
                    child: const Text("asdfjkhasdf"))
              ],
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

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
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          dividerThickness: 3,
          columns: const [
            DataColumn(label: Text("name")),
            DataColumn(label: Text("age")),
            DataColumn(label: Text("asdf")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("asdf")),
              DataCell(Text("data")),
              DataCell(Text("asdffff"))
            ]),
            DataRow(cells: [
              DataCell(Text("asdf")),
              DataCell(Text("data")),
              DataCell(Text("asdffff"))
            ]),
            DataRow(cells: [
              DataCell(Text("asdf")),
              DataCell(Text("data")),
              DataCell(Text("asdffff"))
            ]),
            DataRow(cells: [
              DataCell(Text("asdf")),
              DataCell(Text("data")),
              DataCell(Text("asdffff"))
            ]),
          ],
        ),
      ),
    );
  }
}

class MyDivider extends Divider {
  const MyDivider({Key? key}) : super(key: key, color: Colors.red);
}

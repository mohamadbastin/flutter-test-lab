import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_lab/widgets/start_screen/ship.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red,
        // decoration: BoxDecoration(
        //     color: Colors.lightBlue[300],
        //     image: const DecorationImage(
        //         // TODO implement background. (missing)
        //         image: AssetImage("assets/"),
        //         fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child:
                      const ShipPicture()), //TODO svg has some kind of whitespace around it?
              const _TitleText(),
              const _BottomText(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    height: 40,
                    color: Colors.red,
                    child: const Text(" "),
                  ), //TODO implement two butons

                  Container(
                    width: 140,
                    height: 40,
                    color: Colors.red,
                    child: const Text(" "),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Text(
        "BEGINNE DEINE INDIVIDUELLE REISE INS GLUCK!", //TODO set font
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class _BottomText extends StatefulWidget {
  const _BottomText({Key? key}) : super(key: key);

  @override
  __BottomTextState createState() => __BottomTextState();
}

class __BottomTextState extends State<_BottomText> {
  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Text(
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero.",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black), // TODO set font
      ),
    );
  }
}

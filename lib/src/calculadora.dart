import 'package:calculadora_web/src/controlles/controller.dart';
import 'package:calculadora_web/src/widgets/button.dart';
import 'package:calculadora_web/src/widgets/display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final controller = CalcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container(
      child: Column(
        children: [
          Container(
            child: Text("Calculadora - Flutter",style: TextStyle(fontSize: 38, color:Colors.white, fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              width: 450,
              height: 850,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    children: [
                Expanded(
                  flex: 1,
                  child: Display(value: controller.display),
                ),
                Expanded(
                  flex: 2,
                  child: ButtonHub(
                       onButtonClick: controller.onButtonClick,
                      ),
                )
                    ],
                  ),
              ),
              
            ),
          ),
        ],
      ),
    ));
  }
}
/*
Column(
      children: [
        Expanded(
          flex: 1,
          child: Display(value: controller.display),
        ),
        Expanded(
          flex: 2,
          child: ButtonHub(
               onButtonClick: controller.onButtonClick,
              ),
        )
      ],
    );
*/
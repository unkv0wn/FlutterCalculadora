import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;
  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClick click)? onButtonClick;

  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: <Widget>[
          Button(
            value: '%',
            color: Colors.grey[400],
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: 'CE',
            color: Colors.grey[400],
            onTap: (value) => onButtonClick!(ClearEntryButtonClick(value)),
          ),
          Button(
            value: 'C',
            color: Colors.grey[400],
            onTap: (value) => onButtonClick!(ClearButtonClick(value)),
          ),
          Button(
            value: '',
            color: Colors.grey[400],
          ),
          Button(
            value: '7',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '8',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '9',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '/',
            color: const Color.fromARGB(255, 255, 153, 0),
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '5',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '6',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '4',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '*',
            color: const Color.fromARGB(255, 255, 153, 0),
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '1',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '2',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '3',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '+',
            color: const Color.fromARGB(255, 255, 153, 0),
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '-',
            color: const Color.fromARGB(255, 255, 153, 0),
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '0',
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '.',
            color: const Color.fromARGB(255, 255, 153, 0),
            onTap: (value) => onButtonClick!(CommonButtonClick(value)),
          ),
          Button(
            value: '=',
            color: const Color.fromARGB(255, 255, 153, 0),
            onTap: (value) => onButtonClick!(EqualsButtonClick(value)),
          ),
        ]);
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final mainColor = Colors.grey[800];
    final color = this.color ?? mainColor;
    return Material(
      color: color,
      child: InkWell(
          onTap: onTap == null ? null : () => onTap!(value),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                value,
                style: TextStyle(fontSize: 45, color: Colors.black),
              ),
            ),
          )),
    );
  }
}

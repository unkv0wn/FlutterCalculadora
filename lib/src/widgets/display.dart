import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;
  const Display({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(value,  
        style: TextStyle(
          fontSize: 100,
          color:  Colors.white,
          fontWeight: FontWeight.w500
        )
        ),
      ),
    );
  }
}

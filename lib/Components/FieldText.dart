
import 'package:flutter/material.dart';

class FieldText extends StatelessWidget {
  const FieldText({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 45,
        width: 250,
        child: TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: '$text',
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 19,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(34)),
            ),
          ),
        ),
      ),
    );
  }
}
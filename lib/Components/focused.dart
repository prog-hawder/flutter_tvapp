import 'package:flutter/material.dart';

class focused extends StatefulWidget {
  const focused({required this.image});
  final String image;
  @override
  State<focused> createState() => _focusedState();
}

class _focusedState extends State<focused> {
  double _size = 0.23;
  double _sizel = 200;
  Color _shdcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (focused) {
        setState(() {
          _size = focused ? 0.33 : 0.23;
          _sizel = focused ? 300 : 200;
          _shdcolor = focused ? Colors.white : Colors.black;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height * _size,
          child: Image(
            image: NetworkImage(
              widget.image,
            ),
            fit: BoxFit.cover,
          ),
          decoration: BoxDecoration(color: Colors.grey, boxShadow: [
            BoxShadow(color: _shdcolor, blurRadius: 5.0, spreadRadius: 2.9)
          ]),
          width: _sizel,
        ),
      ),
    );
  }
}
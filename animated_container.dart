import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;

  void _changeShape() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _width,
          height: _height,
          color: _color,
        ),
        ElevatedButton(
          onPressed: _changeShape,
          child: Text('Change Shape'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  final Widget title;
  final List<Widget> actions;
  final double titleSize;
  final double actionsPosition;

  const MyAppBar({
    Key? key,
    required this.title,
    this.actions = const [],
    required this.titleSize,
    required this.actionsPosition,
  }) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  double _titleSize = 20;
  double _actionsPosition = -50;

  @override
  Widget build(BuildContext context) {
    _titleSize = widget.titleSize;
    return Container(
      height: 80,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutCubic,
            height: _titleSize,
            child: widget.title,
          ),
          Positioned(
            top: _actionsPosition,
            right: 0,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeOutCubic,
              opacity: _actionsPosition == -50 ? 0 : 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: widget.actions,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

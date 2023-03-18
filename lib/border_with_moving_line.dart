import 'package:flutter/material.dart';

class BorderWithMovingLine extends StatefulWidget {
  const BorderWithMovingLine({super.key});

  @override
  _BorderWithMovingLineState createState() => _BorderWithMovingLineState();
}

class _BorderWithMovingLineState extends State<BorderWithMovingLine> {
  double _linePosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          _linePosition += details.delta.dx;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.fromLTRB(0, 55, 0, 33),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      child: const Text('账号密码'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      child: const Text('验证码登录'),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: _linePosition,
              child: Container(
                width: 60.0,
                height: 2.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

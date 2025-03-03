// Equivalent to styled widget's Japan Style example
// @see https://github.com/ReinBentdal/styled_widget/wiki/japan-style-example
import 'package:flutter/material.dart';

import 'package:niku/namespace.dart' as n;

class Japan extends StatelessWidget {
  const Japan({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: const JapanPage(),
    );
  }
}

class JapanPage extends StatelessWidget {
  const JapanPage({Key? key}) : super(key: key);

  @override
  build(context) {
    return n.Column([
      n.Text('ウエルカム')
        ..color = Color(0xff44517F)
        ..fontSize = 28
        ..bold
        ..w = 20,
      n.Box()
        ..size = [200, 200]
        ..bg = Color(0xffFF6160)
        ..rounded
        ..useGesture(
          tap: () => showBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => JapanBottomSheet(),
          ),
        ),
    ])
      ..mainEvenly
      ..crossCenter
      ..py = 80
      ..alignTopCenter;
  }
}

class JapanBottomSheet extends StatelessWidget {
  const JapanBottomSheet({Key? key}) : super(key: key);

  @override
  build(context) {
    return n.Column([
      n.Text('サインアップ') // button
        ..color = Colors.white
        ..fontSize = 24
        ..useParent((v) => v
          ..px = 30
          ..py = 15
          ..bg = Color(0xff41508D)
          ..rounded = 35
          ..useGesture(tap: () => Navigator.pop(context))),
      n.Text('サインイン') // bottom description
        ..fontSize = 18
        ..color = Color(0xff455178)
        ..m = 30
    ])
      ..mainEnd
      ..crossCenter
      ..h = 280
      ..wFull
      ..p = 10
      ..useParent((v) => v
        ..bgBlur = 20
        ..rect);
  }
}

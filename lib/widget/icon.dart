import 'package:flutter/material.dart';

import 'package:niku/macros/macros.dart';

// ignore: must_be_immutable
class NikuIcon extends StatelessWidget
    with NikuBuildMacro<NikuIcon>, UseQueryMacro<NikuIcon>, TextAlignMacro {
  IconData? icon;
  double? size;
  Color? color;
  String? semanticLabel;
  TextDirection? textDirection;

  NikuIcon(
    this.icon, {
    Key? key,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
  }) : super(key: key);

  NikuIcon get self => this;

  set apply(NikuIcon? v) {
    if (v == null) return;

    size = v.size ?? size;
    color = v.color ?? color;
    semanticLabel = v.semanticLabel ?? semanticLabel;
    textDirection = v.textDirection ?? textDirection;

    $internalParent..addAll(v.$internalParent);
  }

  NikuIcon get copied => NikuIcon(
        icon,
        key: key,
        size: size,
        color: color,
        semanticLabel: semanticLabel,
        textDirection: textDirection,
      )..$internalParent.addAll($internalParent);

  Icon get widget => Icon(
        icon,
        size: size,
        color: color,
        semanticLabel: semanticLabel,
        textDirection: textDirection,
      );
}

extension TransformNikuIconData on IconData {
  NikuIcon get asNiku => NikuIcon(this);
}

import 'package:flutter/material.dart';

import 'package:niku/niku.dart';

class NikuAnimated<T> extends StatefulWidget {
  NikuAnimated({
    Key? key,
    required this.value,
    required this.builder,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.linear,
  }) : super(key: key);

  final T value;
  final Widget Function(Niku niku, T value) builder;
  final Widget child;
  final Duration duration;
  final Curve curve;

  @override
  State<NikuAnimated> createState() => this.value is Color
      ? NikuAnimatedColor(
          this.builder as Widget Function(Niku niku, Color value))
      : NikuAnimatedState<T>(this.builder);
}

class NikuAnimatedState<T> extends State<NikuAnimated>
    with TickerProviderStateMixin {
  NikuAnimatedState(this.builder);

  final Widget Function(Niku niku, T value) builder;

  T? previous;

  late final AnimationController controller;
  Animation<T>? animation;

  @override
  void initState() {
    super.initState();

    previous = widget.value;

    controller = AnimationController(vsync: this, duration: widget.duration);
    animation = Tween<T>(
      begin: widget.value,
      end: widget.value,
    ).animate(controller);
  }

  handleChange() {
    if (widget.value == previous) {
      return;
    }

    final tween = Tween<T>(begin: previous, end: widget.value);
    previous = widget.value;

    animation = tween.animate(
      CurvedAnimation(
        parent: controller,
        curve: widget.curve,
      ),
    )..addListener(() {
        setState(() {});
      });

    controller.reset();
    controller.forward();
  }

  @override
  build(context) {
    handleChange();

    return builder(widget.child.niku, animation!.value);
  }
}

class NikuAnimatedColor extends State<NikuAnimated>
    with TickerProviderStateMixin {
  NikuAnimatedColor(this.builder);

  final Widget Function(Niku niku, Color value) builder;

  Color? previous;

  late final AnimationController controller;
  Animation<Color?>? animation;

  @override
  void initState() {
    super.initState();

    previous = widget.value;

    controller = AnimationController(vsync: this, duration: widget.duration);
    animation =
        ColorTween(begin: previous, end: widget.value).animate(controller);
  }

  handleChange() {
    if (widget.value == previous) {
      return;
    }

    final tween = ColorTween(begin: previous, end: widget.value);
    previous = widget.value;

    animation = tween.animate(
      CurvedAnimation(
        parent: controller,
        curve: widget.curve,
      ),
    )..addListener(() {
        setState(() {});
      });

    controller.reset();
    controller.forward();
  }

  @override
  build(context) {
    handleChange();

    return builder(
      widget.child.niku,
      animation?.value ?? Colors.transparent,
    );
  }
}

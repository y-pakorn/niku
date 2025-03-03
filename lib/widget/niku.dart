import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:niku/objects/objects.dart';
import 'package:niku/extra/extra.dart';

class NikuAnimatedCollection {
  final align = AnimatedAlign;
}

// ignore: must_be_immutable
class Niku extends StatelessWidget {
  Widget widget;
  Key? key;

  Widget get _w => widget;
  set _w(Widget w) => widget = w;

  Niku([this.widget = const SizedBox.shrink(), this.key]) : super(key: key);

  @override
  build(context) {
    if (key != null) return SizedBox(key: key, child: widget);

    return widget;
  }
}

typedef UseNikuCallback<T> = T Function(T);

extension TransformNikuParent on Widget {
  Niku get niku => Niku(this);
}

extension PropertyBuilder on Niku {
  set margin(EdgeInsets v) => _w = Padding(padding: v, child: _w);
  set nikuMargin(UseNikuCallback<NikuEdgeInsets> cb) =>
      _w = Padding(padding: cb(NikuEdgeInsets()).value, child: _w);

  set m(double v) => _w = Padding(padding: EdgeInsets.all(v), child: _w);
  set mx(double v) =>
      _w = Padding(padding: EdgeInsets.symmetric(horizontal: v), child: _w);
  set my(double v) =>
      _w = Padding(padding: EdgeInsets.symmetric(vertical: v), child: _w);
  set mt(double v) => _w = Padding(padding: EdgeInsets.only(top: v), child: _w);
  set mb(double v) =>
      _w = Padding(padding: EdgeInsets.only(bottom: v), child: _w);
  set ml(double v) =>
      _w = Padding(padding: EdgeInsets.only(left: v), child: _w);
  set mr(double v) =>
      _w = Padding(padding: EdgeInsets.only(right: v), child: _w);

  set padding(EdgeInsets v) => _w = Padding(padding: v, child: _w);
  set nikuPadding(UseNikuCallback<NikuEdgeInsets> cb) =>
      _w = Padding(padding: cb(NikuEdgeInsets()).value, child: _w);

  set p(double v) => _w = Padding(padding: EdgeInsets.all(v), child: _w);
  set px(double v) =>
      _w = Padding(padding: EdgeInsets.symmetric(horizontal: v), child: _w);
  set py(double v) =>
      _w = Padding(padding: EdgeInsets.symmetric(vertical: v), child: _w);
  set pt(double v) => _w = Padding(padding: EdgeInsets.only(top: v), child: _w);
  set pb(double v) =>
      _w = Padding(padding: EdgeInsets.only(bottom: v), child: _w);
  set pl(double v) =>
      _w = Padding(padding: EdgeInsets.only(left: v), child: _w);
  set pr(double v) =>
      _w = Padding(padding: EdgeInsets.only(right: v), child: _w);

  set align(AlignmentGeometry v) => _w = Align(alignment: v, child: _w);
  void get topLeft => _w = Align(alignment: Alignment.topLeft, child: _w);
  void get topCenter => _w = Align(alignment: Alignment.topCenter, child: _w);
  void get topRight => _w = Align(alignment: Alignment.topRight, child: _w);
  void get centerLeft => _w = Align(alignment: Alignment.centerLeft, child: _w);
  void get center => _w = Center(child: _w);
  void get centerRight =>
      _w = Align(alignment: Alignment.centerRight, child: _w);
  void get bottomLeft => _w = Align(alignment: Alignment.bottomLeft, child: _w);
  void get bottomCenter =>
      _w = Align(alignment: Alignment.bottomCenter, child: _w);
  void get bottomRight =>
      _w = Align(alignment: Alignment.bottomRight, child: _w);

  void get fullSize =>
      _w = SizedBox(width: double.infinity, height: double.infinity, child: _w);
  void get fullWidth => _w = SizedBox(width: double.infinity, child: _w);
  void get fullHeight => _w = SizedBox(height: double.infinity, child: _w);
  void get wFull => _w = SizedBox(width: double.infinity, child: _w);
  void get hFull => _w = SizedBox(height: double.infinity, child: _w);
  void get w100 => _w = SizedBox(width: double.infinity, child: _w);
  void get h100 => _w = SizedBox(height: double.infinity, child: _w);

  set aspectRatio(double aspectRatio) =>
      _w = AspectRatio(aspectRatio: aspectRatio, child: _w);
  set ratio(double aspectRatio) =>
      _w = AspectRatio(aspectRatio: aspectRatio, child: _w);

  set fractionSize(List<double> v) => _w =
      FractionallySizedBox(widthFactor: v[0], heightFactor: v[1], child: _w);
  set sizePercent(List<double> v) => _w =
      FractionallySizedBox(widthFactor: v[0], heightFactor: v[1], child: _w);

  set fractionWidth(double v) =>
      _w = FractionallySizedBox(widthFactor: v, child: _w);
  set fractionW(double v) =>
      _w = FractionallySizedBox(widthFactor: v, child: _w);
  set fw(double v) => _w = FractionallySizedBox(widthFactor: v, child: _w);
  set wFactor(double v) => _w = FractionallySizedBox(widthFactor: v, child: _w);
  set widthPercent(double v) =>
      _w = FractionallySizedBox(widthFactor: v / 100, child: _w);
  set wPercent(double v) =>
      _w = FractionallySizedBox(widthFactor: v / 100, child: _w);

  set fractionHeight(double v) =>
      _w = FractionallySizedBox(heightFactor: v, child: _w);
  set fractionH(double v) =>
      _w = FractionallySizedBox(heightFactor: v, child: _w);
  set hFactor(double v) =>
      _w = FractionallySizedBox(heightFactor: v, child: _w);
  set fh(double v) => _w = FractionallySizedBox(heightFactor: v, child: _w);
  set heightPercent(double v) =>
      _w = FractionallySizedBox(heightFactor: v / 100, child: _w);
  set hPercent(double v) =>
      _w = FractionallySizedBox(heightFactor: v / 100, child: _w);

  set constraints(BoxConstraints v) =>
      ConstrainedBox(constraints: v, child: _w);
  set nikuConstraints(UseNikuCallback<NikuBoxConstraints> cb) =>
      ConstrainedBox(constraints: cb(NikuBoxConstraints()).value, child: _w);

  set maxSize(List<double> v) => _w = ConstrainedBox(
      constraints: BoxConstraints(maxWidth: v[0], maxHeight: v[1]), child: _w);
  set minSize(List<double> v) => _w = ConstrainedBox(
      constraints: BoxConstraints(minWidth: v[0], minHeight: v[1]), child: _w);
  set max(List<double> v) => _w = ConstrainedBox(
      constraints: BoxConstraints(maxWidth: v[0], maxHeight: v[1]), child: _w);
  set min(List<double> v) => _w = ConstrainedBox(
      constraints: BoxConstraints(minWidth: v[0], minHeight: v[1]), child: _w);

  set maxWidth(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(maxWidth: v), child: _w);
  set maxHeight(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(maxHeight: v), child: _w);
  set maxW(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(maxWidth: v), child: _w);
  set maxH(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(maxHeight: v), child: _w);
  set wMax(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(maxWidth: v), child: _w);
  set hMax(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(maxHeight: v), child: _w);

  set minWidth(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(minWidth: v), child: _w);
  set minHeight(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(minHeight: v), child: _w);
  set minW(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(minWidth: v), child: _w);
  set minH(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(minHeight: v), child: _w);
  set wMin(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(minWidth: v), child: _w);
  set hMin(double v) =>
      _w = ConstrainedBox(constraints: BoxConstraints(minHeight: v), child: _w);

  set size(List<double> v) =>
      _w = SizedBox(width: v[0], height: v[1], child: _w);
  set width(double v) => _w = SizedBox(width: v, child: _w);
  set w(double v) => _w = SizedBox(width: v, child: _w);
  set height(double v) => _w = SizedBox(height: v, child: _w);
  set h(double v) => _w = SizedBox(height: v, child: _w);

  void get fitted => _w = FittedBox(child: _w);
  void get expanded => _w = Expanded(child: _w);

  set bg(Color v) => _w = ColoredBox(color: v, child: _w);
  set backgroundColor(Color v) => _w = ColoredBox(color: v, child: _w);

  set opacity(double v) => _w = Opacity(opacity: v, child: _w);

  double get rounded {
    _w = ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(999999)),
      child: _w,
    );

    return 999999;
  }

  set rounded(double v) => _w =
      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(v)), child: _w);

  set boxDecoration(BoxDecoration v) =>
      _w = DecoratedBox(decoration: v, child: _w);

  set decorated(BoxDecoration v) => _w = DecoratedBox(decoration: v, child: _w);

  set hero(String v) => _w = Hero(tag: v, child: _w);
  set heroTag(String v) => _w = Hero(tag: v, child: _w);

  set ignorePointer(bool v) => _w = IgnorePointer(child: _w, ignoring: v);
  set absorbPointer(bool v) => _w = AbsorbPointer(child: _w, absorbing: v);

  set tooltip(String v) => _w = Tooltip(message: v, child: _w);
  set tip(String v) => _w = Tooltip(message: v, child: _w);

  set matrix4(Matrix4 v) => _w = Transform(transform: v, child: _w);
  set rotate(double v) => _w = Transform.rotate(angle: v, child: _w);
  set scale(double v) => _w = Transform.scale(scale: v, child: _w);
  set translate(List<double> v) =>
      _w = Transform.translate(offset: Offset(v[0], v[1]), child: _w);
  set translateX(double v) =>
      _w = Transform.translate(offset: Offset(v, 0), child: _w);
  set translateY(double v) =>
      _w = Transform.translate(offset: Offset(0, v), child: _w);

  void useGesture({
    void Function(TapDownDetails)? tapDown,
    void Function(TapUpDetails)? tapUp,
    VoidCallback? tap,
    VoidCallback? tapCancel,
    VoidCallback? secondaryTap,
    void Function(TapDownDetails)? secondaryTapDown,
    void Function(TapUpDetails)? secondaryTapUp,
    VoidCallback? secondaryTapCancel,
    void Function(TapDownDetails)? tertiaryTapDown,
    void Function(TapUpDetails)? tertiaryTapUp,
    VoidCallback? tertiaryTapCancel,
    void Function(TapDownDetails)? doubleTapDown,
    VoidCallback? doubleTap,
    VoidCallback? doubleTapCancel,
    VoidCallback? longPress,
    void Function(LongPressStartDetails)? longPressStart,
    void Function(LongPressMoveUpdateDetails)? longPressMoveUpdate,
    VoidCallback? longPressUp,
    void Function(LongPressEndDetails)? longPressEnd,
    VoidCallback? secondaryLongPress,
    void Function(LongPressStartDetails)? secondaryLongPressStart,
    void Function(LongPressMoveUpdateDetails)? secondaryLongPressMoveUpdate,
    VoidCallback? secondaryLongPressUp,
    void Function(LongPressEndDetails)? secondaryLongPressEnd,
    void Function(DragDownDetails)? verticalDragDown,
    void Function(DragStartDetails)? verticalDragStart,
    void Function(DragUpdateDetails)? verticalDragUpdate,
    void Function(DragEndDetails)? verticalDragEnd,
    VoidCallback? verticalDragCancel,
    void Function(DragDownDetails)? horizontalDragDown,
    void Function(DragStartDetails)? horizontalDragStart,
    void Function(DragUpdateDetails)? horizontalDragUpdate,
    void Function(DragEndDetails)? horizontalDragEnd,
    VoidCallback? horizontalDragCancel,
    void Function(ForcePressDetails)? forcePressStart,
    void Function(ForcePressDetails)? forcePressPeak,
    void Function(ForcePressDetails)? forcePressUpdate,
    void Function(ForcePressDetails)? forcePressEnd,
    void Function(DragDownDetails)? panDown,
    void Function(DragStartDetails)? panStart,
    void Function(DragUpdateDetails)? panUpdate,
    void Function(DragEndDetails)? panEnd,
    VoidCallback? panCancel,
    void Function(ScaleStartDetails)? scaleStart,
    void Function(ScaleUpdateDetails)? scaleUpdate,
    void Function(ScaleEndDetails)? scaleEnd,
  }) =>
      _w = GestureDetector(
        onTapDown: tapDown,
        onTapUp: tapUp,
        onTap: tap,
        onTapCancel: tapCancel,
        onSecondaryTap: secondaryTap,
        onSecondaryTapDown: secondaryTapDown,
        onSecondaryTapUp: secondaryTapUp,
        onSecondaryTapCancel: secondaryTapCancel,
        onTertiaryTapDown: tertiaryTapDown,
        onTertiaryTapUp: tertiaryTapUp,
        onTertiaryTapCancel: tertiaryTapCancel,
        onDoubleTapDown: doubleTapDown,
        onDoubleTap: doubleTap,
        onDoubleTapCancel: doubleTapCancel,
        onLongPress: longPress,
        onLongPressStart: longPressStart,
        onLongPressMoveUpdate: longPressMoveUpdate,
        onLongPressUp: longPressUp,
        onLongPressEnd: longPressEnd,
        onSecondaryLongPress: secondaryLongPress,
        onSecondaryLongPressStart: secondaryLongPressStart,
        onSecondaryLongPressMoveUpdate: secondaryLongPressMoveUpdate,
        onSecondaryLongPressUp: secondaryLongPressUp,
        onSecondaryLongPressEnd: secondaryLongPressEnd,
        onVerticalDragDown: verticalDragDown,
        onVerticalDragStart: verticalDragStart,
        onVerticalDragUpdate: verticalDragUpdate,
        onVerticalDragEnd: verticalDragEnd,
        onVerticalDragCancel: verticalDragCancel,
        onHorizontalDragDown: horizontalDragDown,
        onHorizontalDragStart: horizontalDragStart,
        onHorizontalDragUpdate: horizontalDragUpdate,
        onHorizontalDragEnd: horizontalDragEnd,
        onHorizontalDragCancel: horizontalDragCancel,
        onForcePressStart: forcePressStart,
        onForcePressPeak: forcePressPeak,
        onForcePressUpdate: forcePressUpdate,
        onForcePressEnd: forcePressEnd,
        onPanDown: panDown,
        onPanStart: panStart,
        onPanUpdate: panUpdate,
        onPanEnd: panEnd,
        onPanCancel: panCancel,
        onScaleStart: scaleStart,
        onScaleUpdate: scaleUpdate,
        onScaleEnd: scaleEnd,
        child: _w,
      );

  set border(Border v) =>
      _w = DecoratedBox(decoration: BoxDecoration(border: v), child: _w);

  useBorder({
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      _w = DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: color ?? Colors.transparent,
            width: width ?? 0,
            style: style ?? BorderStyle.solid,
          ),
        ),
        child: _w,
      );

  useRoundedBorder({
    double? rounded,
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      _w = DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(rounded ?? 99999)),
          border: Border.all(
            color: color ?? Colors.transparent,
            width: width ?? 0,
            style: style ?? BorderStyle.solid,
          ),
        ),
        child: _w,
      );

  set backdropFilter(ImageFilter v) =>
      _w = BackdropFilter(filter: v, child: _w);

  set bgBlur(double v) => _w =
      BackdropFilter(filter: ImageFilter.blur(sigmaX: v, sigmaY: v), child: _w);

  Clip get rect {
    _w = ClipRect(child: _w);

    return Clip.hardEdge;
  }

  set rect(Clip clip) => _w = ClipRect(
        child: _w,
        clipBehavior: clip,
      );

  Clip get oval {
    _w = ClipOval(child: _w);

    return Clip.hardEdge;
  }

  set oval(Clip clip) => _w = ClipRect(
        child: _w,
        clipBehavior: clip,
      );

  set elevation(double elevation) => _w = Card(
        elevation: elevation,
        child: _w,
      );

  set top(double v) => _w = Positioned(top: v, child: _w);
  set left(double v) => _w = Positioned(left: v, child: _w);
  set bottom(double v) => _w = Positioned(bottom: v, child: _w);
  set right(double v) => _w = Positioned(right: v, child: _w);

  set flex(int v) => _w = Flexible(flex: v, child: _w);
  int get flex {
    _w = Flexible(child: _w);

    return 1;
  }

  set shadows(List<BoxShadow> v) =>
      _w = DecoratedBox(child: _w, decoration: BoxDecoration(boxShadow: v));

  void useAnimationBuilder({
    required Widget Function(BuildContext context, Widget child) builder,
    required AnimationController animation,
  }) =>
      _w = AnimatedBuilder(
        animation: animation,
        builder: (context, child) => builder(context, _w),
        child: _w,
      );

  void useForm({
    Key? key,
    AutovalidateMode? autovalidateMode,
    Future<bool> Function()? onWillPop,
    void Function()? onChanged,
  }) =>
      _w = Form(
        key: key,
        child: _w,
        autovalidateMode: autovalidateMode,
        onWillPop: onWillPop,
        onChanged: onChanged,
      );

  void get scrollbar => _w = Scrollbar(child: _w);

  void useScrollbar({
    ScrollController? controller,
    bool? isAlwaysShown,
    bool? showTrackOnHover,
    double? hoverThickness,
    double? thickness,
    Radius? radius,
    ScrollNotificationPredicate? notificationPredicate,
  }) =>
      _w = Scrollbar(
        child: _w,
        controller: controller,
        isAlwaysShown: isAlwaysShown,
        hoverThickness: hoverThickness,
        thickness: thickness,
        radius: radius,
        notificationPredicate: notificationPredicate,
      );

  void get scrollable => _w = SingleChildScrollView(child: _w);

  void useScrollView({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? scrollPhysics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) =>
      _w = SingleChildScrollView(
        child: _w,
        controller: controller,
        scrollDirection: scrollDirection,
        primary: primary,
        reverse: reverse,
        physics: scrollPhysics,
        dragStartBehavior: dragStartBehavior,
        restorationId: restorationId,
      );

  set theme(ThemeData v) => _w = Theme(data: v, child: _w);

  set visible(bool visibility) => _w = Visibility(
        visible: visibility,
        child: _w,
      );

  get hidden => _w = Visibility(child: _w, visible: false);

  void useChild(Widget Function(Niku child) builder) => _w = builder(_w.niku);

  void get safeArea => _w = SafeArea(child: _w);

  void get safeAreaX => _w = SafeArea(child: _w, top: false, bottom: false);
  void get safeAreaY => _w = SafeArea(child: _w, left: false, right: false);

  void get safeAreaTop =>
      _w = SafeArea(child: _w, bottom: false, left: false, right: false);
  void get safeAreaBottom =>
      _w = SafeArea(child: _w, top: false, left: false, right: false);
  void get safeAreaLeft =>
      _w = SafeArea(child: _w, right: false, top: false, bottom: false);
  void get safeAreaRight =>
      _w = SafeArea(child: _w, left: false, top: false, bottom: false);

  void get safe => _w = SafeArea(child: _w);

  void get safeX => _w = SafeArea(child: _w, top: false, bottom: false);
  void get safeY => _w = SafeArea(child: _w, left: false, right: false);

  void get safeTop =>
      _w = SafeArea(child: _w, bottom: false, left: false, right: false);
  void get safeBottom =>
      _w = SafeArea(child: _w, top: false, left: false, right: false);
  void get safeLeft =>
      _w = SafeArea(child: _w, right: false, top: false, bottom: false);
  void get safeRight =>
      _w = SafeArea(child: _w, left: false, top: false, bottom: false);

  set gradient(Gradient v) =>
      _w = DecoratedBox(decoration: BoxDecoration(gradient: v), child: _w);

  set quarterTurns(int turns) => _w = RotatedBox(
        quarterTurns: turns,
        child: _w,
      );

  set splash(Color color) {
    _w = InkWell(
      splashColor: color,
      child: _w,
    );
  }

  set on(List<dynamic> dependencies) =>
      useChild((child) => NikuOn(() => child, dependencies));

  List<dynamic> get on {
    useChild((child) => NikuOn(() => child, []));

    return [];
  }

  void get freezed => useChild((child) => NikuOn(() => child, []));

  void useQuery(Function(Niku child, MediaQueryData constraints) builder) {
    useChild(
      (child) => Builder(
        builder: (context) => builder(
          child.build(context).niku,
          MediaQuery.of(context),
        ),
      ),
    );
  }

  void useSize(Function(Niku child, Size constraints) builder) {
    useChild(
      (child) => LayoutBuilder(
        builder: (context, constraints) => builder(
          child.build(context).niku,
          Size(constraints.maxWidth, constraints.maxHeight),
        ),
      ),
    );
  }

  /// ```dart
  /// void useScreen({
  ///   // > 568px
  ///   Widget Function(Niku)? base,
  ///   // 568 - 640px
  ///   Widget Function(Niku)? xs,
  ///   // 640 - 768px
  ///   Widget Function(Niku)? sm,
  ///   // 768 - 920px
  ///   Widget Function(Niku)? md,
  ///   // 920 - 1024px
  ///   Widget Function(Niku)? lg,
  ///   // > 1024px
  ///   Widget Function(Niku)? xl,
  /// })
  /// ```
  void useScreen({
    // > 568px
    Widget Function(Niku)? base,
    // 568 - 640px
    Widget Function(Niku)? xs,
    // 640 - 768px
    Widget Function(Niku)? sm,
    // 768 - 920px
    Widget Function(Niku)? md,
    // 920 - 1024px
    Widget Function(Niku)? lg,
    // > 1024px
    Widget Function(Niku)? xl,
  }) =>
      _w = NikuScreen(
        base: base,
        xs: xs,
        sm: sm,
        md: md,
        lg: lg,
        xl: xl,
        child: _w,
      );

  void useDarkMode(Widget Function(Niku, bool) builder) {
    useChild(
      (child) => Builder(
        builder: (context) => builder(
          child.build(context).niku,
          Theme.of(context).brightness == Brightness.dark,
        ),
      ),
    );
  }

  void useThemeSelector({
    required Widget Function(Niku) light,
    required Widget Function(Niku) dark,
  }) {
    useChild(
      (child) => Builder(
        builder: (context) => Theme.of(context).brightness == Brightness.dark
            ? dark(child.build(context).niku)
            : light(
                child.build(context).niku,
              ),
      ),
    );
  }

  void usePlatform({
    required Widget Function(Niku) base,
    required Widget Function(Niku) android,
    required Widget Function(Niku) iOS,
    required Widget Function(Niku) fuchsia,
    required Widget Function(Niku) linux,
    required Widget Function(Niku) macOS,
    required Widget Function(Niku) windows,
    required Widget Function(Niku) web,
  }) {
    useChild(
      (child) => Builder(
        builder: (context) {
          final c = child.build(context).niku;

          if (kIsWeb) return web(c);

          switch (Theme.of(context).platform) {
            case TargetPlatform.android:
              return android(c);
            case TargetPlatform.iOS:
              return iOS(c);
            case TargetPlatform.fuchsia:
              return fuchsia(c);
            case TargetPlatform.linux:
              return linux(c);
            case TargetPlatform.macOS:
              return macOS(c);
            case TargetPlatform.windows:
              return windows(c);
            default:
              return base(c);
          }
        },
      ),
    );
  }

  void useAnimated<T>({
    Key? key,
    required Widget Function(Niku niku, T value) builder,
    required T value,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
  }) {
    _w = NikuAnimated<T>(
      builder: builder,
      value: value,
      duration: duration,
      curve: curve,
      child: _w,
    );
  }

  void useTransition<T>({
    Key? key,
    required T value,
    required Widget Function(Niku niku, T value) builder,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
  }) {
    _w = NikuAnimated<T>(
      builder: builder,
      value: value,
      duration: duration,
      curve: curve,
      child: _w,
    );
  }

  void useTransitions({
    Key? key,
    required List dependencies,
    required Widget Function(Niku niku, List dependencies) builder,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
  }) {
    _w = NikuAnimateds(
      builder: builder,
      dependencies: dependencies,
      duration: duration,
      curve: curve,
      child: _w,
    );
  }
}

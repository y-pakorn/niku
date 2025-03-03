// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'
    show CupertinoAlertDialog, CupertinoDialogAction, showCupertinoDialog;

import '../widget/widget.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

Future<void> showNikuDialog({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
  String? barrierLabel,
  bool useRootNavigator = true,
  bool? barrierDismissible,
}) async {
  final alert = builder(context);

  if (alert is NikuAlert) {
    if (alert.adaptive) {
      final platform = Theme.of(context).platform;

      if (platform == TargetPlatform.macOS || platform == TargetPlatform.iOS)
        return showCupertinoDialog(
          context: context,
          builder: builder,
          barrierLabel: barrierLabel,
          barrierDismissible: barrierDismissible ?? false,
          useRootNavigator: useRootNavigator,
        );
    }

    if (alert.cupertino)
      return showCupertinoDialog(
        context: context,
        builder: builder,
        barrierLabel: barrierLabel,
        barrierDismissible: barrierDismissible ?? false,
        useRootNavigator: useRootNavigator,
      );
  }

  return showDialog(
    context: context,
    builder: builder,
    barrierLabel: barrierLabel,
    barrierDismissible: barrierDismissible ?? true,
    useRootNavigator: useRootNavigator,
  );
}

/// ### Alert Property Builder
/// Style property builder for building column
///
/// #### @see https://niku.saltyaom.com/widget/alert
/// #### @example
/// ```dart
/// import 'package:niku/niku.dart';
/// import 'package:niku/namespace.dart' as n;
///
/// n.showDialog(
///   builder: (context) => n.Alert()
///     ..title = Text('Title')
///     ..content = Text('Content')
///     ..actions = [
///       n.Button('Ok')
///         ..onPressed = () {
///           Navigator.of(context).pop();
///         }
///     ]
/// )
/// ```
class NikuAlert extends StatelessWidget
    with
        NikuBuildMacro<NikuAlert>,
        UseQueryMacro<NikuAlert>,
        ActionPaddingFullMacro,
        ApplyTitleTextMacro,
        ApplyContentTextMacro,
        ButtonPaddingFullMacro,
        ClipMacro,
        ContentPaddingFullMacro,
        InsetPaddingFullMacro {
  Widget? title;
  NikuEdgeInsets? titlePadding;
  NikuTextStyle? titleTextStyle;
  Widget? content;
  NikuEdgeInsets? contentPadding;
  NikuTextStyle? contentTextStyle;
  List<Widget>? actions;
  NikuEdgeInsets? actionsPadding;
  MainAxisAlignment? actionsAlignment;
  VerticalDirection? actionsOverflowDirection;
  double? actionsOverflowButtonSpacing;
  NikuEdgeInsets? buttonPadding;
  Color? backgroundColor;
  double? elevation;
  String? semanticLabel;
  NikuEdgeInsets? insetPadding;
  Clip? clipBehavior;
  ShapeBorder? shape;
  bool? scrollable;

  bool cupertino = false;
  bool adaptive = false;
  List<CupertinoDialogAction>? cupertinoActions;

  /// ### Alert Property Builder
  /// Style property builder for building column
  ///
  /// #### @see https://niku.saltyaom.com/widget/alert
  /// #### @example
  /// ```dart
  /// import 'package:niku/niku.dart';
  /// import 'package:niku/namespace.dart' as n;
  ///
  /// n.showAlertDialog(
  ///   builder: (context) => n.Alert()
  ///     ..title = Text('Title')
  ///     ..content = Text('Content')
  ///     ..actions = [
  ///       n.Button('Ok')
  ///         ..onPressed = () {
  ///           Navigator.of(context).pop();
  ///         }
  ///     ]
  /// )
  /// ```
  NikuAlert({
    Key? key,
    this.title,
    this.titlePadding,
    this.titleTextStyle,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.actions,
    this.cupertinoActions,
    this.actionsPadding,
    this.actionsAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.semanticLabel,
    this.insetPadding,
    this.clipBehavior,
    this.shape,
    this.scrollable,
    this.adaptive = false,
    this.cupertino = false,
  }) : super(key: key);

  factory NikuAlert.adaptive({
    Key? key,
    Widget? title,
    NikuEdgeInsets? titlePadding,
    NikuTextStyle? titleTextStyle,
    Widget? content,
    NikuEdgeInsets? contentPadding,
    NikuTextStyle? contentTextStyle,
    List<Widget>? actions,
    NikuEdgeInsets? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    NikuEdgeInsets? buttonPadding,
    Color? backgroundColor,
    double? elevation,
    String? semanticLabel,
    NikuEdgeInsets? insetPadding,
    Clip? clipBehavior,
    ShapeBorder? shape,
    bool? scrollable,
    List<CupertinoDialogAction>? cupertinoActions,
  }) =>
      NikuAlert(
        key: key,
        title: title,
        titlePadding: titlePadding,
        titleTextStyle: titleTextStyle,
        content: content,
        contentPadding: contentPadding,
        contentTextStyle: contentTextStyle,
        actions: actions,
        actionsPadding: actionsPadding,
        actionsAlignment: actionsAlignment,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding,
        backgroundColor: backgroundColor,
        elevation: elevation,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding,
        clipBehavior: clipBehavior,
        shape: shape,
        scrollable: scrollable,
        adaptive: true,
        cupertinoActions: cupertinoActions,
      );

  factory NikuAlert.cupertino({
    Key? key,
    Widget? title,
    NikuEdgeInsets? titlePadding,
    NikuTextStyle? titleTextStyle,
    Widget? content,
    NikuEdgeInsets? contentPadding,
    NikuTextStyle? contentTextStyle,
    List<CupertinoDialogAction>? actions,
    NikuEdgeInsets? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    NikuEdgeInsets? buttonPadding,
    Color? backgroundColor,
    double? elevation,
    String? semanticLabel,
    NikuEdgeInsets? insetPadding,
    Clip? clipBehavior,
    ShapeBorder? shape,
    bool? scrollable,
    List<CupertinoDialogAction>? cupertinoActions,
  }) =>
      NikuAlert(
        key: key,
        title: title,
        titlePadding: titlePadding,
        titleTextStyle: titleTextStyle,
        content: content,
        contentPadding: contentPadding,
        contentTextStyle: contentTextStyle,
        actionsPadding: actionsPadding,
        actionsAlignment: actionsAlignment,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding,
        backgroundColor: backgroundColor,
        elevation: elevation,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding,
        clipBehavior: clipBehavior,
        shape: shape,
        scrollable: scrollable,
        cupertino: true,
        cupertinoActions: cupertinoActions,
      );

  NikuAlert get self => this;

  set apply(NikuAlert? v) {
    if (v == null) return;

    title = title ?? title;
    titlePadding?.apply = titlePadding ?? titlePadding;
    titleTextStyle = titleTextStyle ?? titleTextStyle;
    content = content ?? content;
    contentPadding?.apply = contentPadding ?? contentPadding;
    contentTextStyle = contentTextStyle ?? contentTextStyle;
    actions = actions ?? actions;
    actionsPadding?.apply = actionsPadding ?? actionsPadding;
    actionsAlignment = actionsAlignment ?? actionsAlignment;
    actionsOverflowDirection =
        actionsOverflowDirection ?? actionsOverflowDirection;
    actionsOverflowButtonSpacing =
        actionsOverflowButtonSpacing ?? actionsOverflowButtonSpacing;
    buttonPadding?.apply = buttonPadding ?? buttonPadding;
    backgroundColor = backgroundColor ?? backgroundColor;
    elevation = elevation ?? elevation;
    semanticLabel = semanticLabel ?? semanticLabel;
    insetPadding?.apply = insetPadding ?? insetPadding;
    clipBehavior = clipBehavior ?? clipBehavior;
    shape = shape ?? shape;
    scrollable = scrollable ?? scrollable;

    $internalParent.addAll(v.$internalParent);
  }

  NikuAlert get copied => NikuAlert(
        key: key,
        title: title,
        titlePadding: titlePadding,
        titleTextStyle: titleTextStyle,
        content: content,
        contentPadding: contentPadding,
        contentTextStyle: contentTextStyle,
        actions: actions,
        actionsPadding: actionsPadding,
        actionsAlignment: actionsAlignment,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding,
        backgroundColor: backgroundColor,
        elevation: elevation,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding,
        clipBehavior: clipBehavior,
        shape: shape,
        scrollable: scrollable,
        cupertino: cupertino,
        adaptive: adaptive,
      )..$internalParent.addAll($internalParent);

  static List<Widget> _mapWidgetToCupertino(List<Widget> children) =>
      children.map((e) {
        if (e is NikuButton) {
          final textStyle = e.style?.textStyleState?.base?.value ??
              e.style?.textStyleState?.all?.value;

          return CupertinoDialogAction(
            key: e.key,
            child: e.child,
            onPressed: e.onPressed,
            textStyle: textStyle,
            isDefaultAction: textStyle?.fontWeight != null,
            isDestructiveAction: textStyle?.color == Colors.red,
          );
        }

        if (e is TextButton || e is ElevatedButton || e is OutlinedButton)
          return CupertinoDialogAction(
            child: (e as TextButton).child ?? SizedBox.shrink(),
            onPressed: e.onPressed,
          );

        return e;
      }).toList(growable: false);

  Widget _buildCupertinoAlert() => CupertinoAlertDialog(
        key: key,
        title: title,
        content: content,
        actions: cupertinoActions ??
            (actions != null ? _mapWidgetToCupertino(actions!) : null) ??
            [],
      );

  Widget _buildAlertDialog() => AlertDialog(
        key: key,
        title: title,
        titlePadding: titlePadding?.value,
        titleTextStyle: titleTextStyle?.value,
        content: content != null && content is NikuColumn
            ? ((content as NikuColumn)..min)
            : content,
        contentPadding: contentPadding?.value ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: contentTextStyle?.value,
        actions: actions,
        actionsPadding: actionPadding?.value ?? EdgeInsets.zero,
        actionsAlignment: actionsAlignment,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding?.value,
        backgroundColor: backgroundColor,
        elevation: elevation,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding?.value ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        clipBehavior: clipBehavior ?? Clip.none,
        shape: shape,
        scrollable: scrollable ?? false,
      );

  Widget get widget {
    if (cupertino) return _buildCupertinoAlert();

    if (adaptive)
      return Builder(builder: (context) {
        final platform = Theme.of(context).platform;

        if (platform == TargetPlatform.macOS || platform == TargetPlatform.iOS)
          return _buildCupertinoAlert();

        return _buildAlertDialog();
      });

    return _buildAlertDialog();
  }
}

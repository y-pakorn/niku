import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

class NikuInputDecoration
    with ContentPaddingMacro, ConstraintsMacro, FloatingLabelBehaviorMacro {
  Widget? icon;
  Widget? label;
  String? labelText;
  NikuTextStyle? labelStyle;
  NikuTextStyle? floatingLabelStyle;
  String? helperText;
  NikuTextStyle? helperStyle;
  int? helperMaxLines;
  String? hintText;
  NikuTextStyle? hintStyle;
  TextDirection? hintTextDirection;
  int? hintMaxLines;
  String? errorText;
  NikuTextStyle? errorStyle;
  int? errorMaxLines;
  FloatingLabelBehavior? floatingLabelBehavior;
  bool? isDense;
  NikuEdgeInsets? contentPadding;
  bool? isCollapsed;
  Widget? prefixIcon;
  NikuBoxConstraints? prefixIconConstraints;
  Widget? prefix;
  String? prefixText;
  NikuTextStyle? prefixStyle;
  Widget? suffixIcon;
  Widget? suffix;
  String? suffixText;
  NikuTextStyle? suffixStyle;
  NikuBoxConstraints? suffixIconConstraints;
  String? counterText;
  Widget? counter;
  NikuTextStyle? counterStyle;
  bool? filled;
  Color? fillColor;
  Color? focusColor;
  Color? hoverColor;
  NikuInputBorder? errorBorder;
  NikuInputBorder? focusedBorder;
  NikuInputBorder? focusedErrorBorder;
  NikuInputBorder? disabledBorder;
  NikuInputBorder? enabledBorder;
  NikuInputBorder? baseBorder;
  bool? enabled;
  String? semanticCounterText;
  bool? alignLabelWithHint;
  NikuBoxConstraints? constraints;

  NikuInputDecoration({
    this.icon,
    this.label,
    this.labelText,
    this.labelStyle,
    this.floatingLabelStyle,
    this.helperText,
    this.helperStyle,
    this.helperMaxLines,
    this.hintText,
    this.hintStyle,
    this.hintTextDirection,
    this.hintMaxLines,
    this.errorText,
    this.errorStyle,
    this.errorMaxLines,
    this.floatingLabelBehavior,
    this.isDense,
    this.contentPadding,
    this.isCollapsed,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.prefix,
    this.prefixText,
    this.prefixStyle,
    this.suffixIcon,
    this.suffix,
    this.suffixText,
    this.suffixStyle,
    this.suffixIconConstraints,
    this.counterText,
    this.counter,
    this.counterStyle,
    this.filled,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.baseBorder,
    this.enabled,
    this.semanticCounterText,
    this.alignLabelWithHint,
    this.constraints,
  });

  void get isFilled {
    filled = true;
  }

  _initializeAllBorder() {
    if (baseBorder == null) baseBorder = NikuInputBorder();
    if (enabledBorder == null) enabledBorder = NikuInputBorder();
    if (disabledBorder == null) disabledBorder = NikuInputBorder();
    if (focusedErrorBorder == null) focusedErrorBorder = NikuInputBorder();
    if (focusedBorder == null) focusedBorder = NikuInputBorder();
    if (errorBorder == null) errorBorder = NikuInputBorder();
  }

  set border(NikuInputBorder? value) {
    _initializeAllBorder();

    baseBorder!.apply = value;
    enabledBorder!.apply = value;
    disabledBorder!.apply = value;
    focusedBorder!.apply = value;
    focusedErrorBorder!.apply = value;
    errorBorder!.apply = value;
  }

  set baseBorderWidth(double? width) {
    _initializeAllBorder();

    baseBorder!.width = width;
    enabledBorder!.width = width;
    disabledBorder!.width = width;
    focusedBorder!.width = width;
    focusedErrorBorder!.width = width;
    errorBorder!.width = width;
  }

  set borderColor(Color? color) {
    _initializeAllBorder();

    baseBorder!.color = color;
    enabledBorder!.color = color;
    disabledBorder!.color = color;
    focusedBorder!.color = color;
    focusedErrorBorder!.color = color;
    errorBorder!.color = color;
  }

  set bg(Color color) {
    filled = true;
    fillColor = color;
  }

  set borderRadius(double? radius) {
    _initializeAllBorder();

    baseBorder!.radius = radius;
    enabledBorder!.radius = radius;
    disabledBorder!.radius = radius;
    focusedBorder!.radius = radius;
    focusedErrorBorder!.radius = radius;
    errorBorder!.radius = radius;
  }

  double get rounded {
    _initializeAllBorder();

    baseBorder!.radius = 99999;
    enabledBorder!.radius = 9999;
    disabledBorder!.radius = 9999;
    focusedBorder!.radius = 9999;
    focusedErrorBorder!.radius = 9999;
    errorBorder!.radius = 9999;

    return 99999;
  }

  set rounded(double v) {
    _initializeAllBorder();

    baseBorder!.radius = v;
    enabledBorder!.radius = v;
    disabledBorder!.radius = v;
    focusedBorder!.radius = v;
    focusedErrorBorder!.radius = v;
    errorBorder!.radius = v;
  }

  void useBorder(
    InputBorder? all,
    InputBorder? base,
    InputBorder? enabled,
    InputBorder? disabled,
    InputBorder? focused,
    InputBorder? focusedError,
    InputBorder? error,
  ) {
    _initializeAllBorder();

    baseBorder = all?.asNiku ?? baseBorder;
    enabledBorder = enabled?.asNiku ?? enabledBorder;
    disabledBorder = disabled?.asNiku ?? disabledBorder;
    focusedBorder = focused?.asNiku ?? focusedBorder;
    focusedErrorBorder = focusedError?.asNiku ?? focusedErrorBorder;
    errorBorder = error?.asNiku ?? errorBorder;
  }

  void useNikuBorder(
    NikuInputBorder? all,
    NikuInputBorder? base,
    NikuInputBorder? enabled,
    NikuInputBorder? disabled,
    NikuInputBorder? focused,
    NikuInputBorder? focusedError,
    NikuInputBorder? error,
  ) {
    _initializeAllBorder();

    baseBorder = all ?? baseBorder!;
    enabledBorder = enabled ?? enabledBorder!;
    disabledBorder = disabled ?? disabledBorder!;
    focusedBorder = focused ?? focusedBorder!;
    focusedErrorBorder = focusedError ?? focusedErrorBorder!;
    errorBorder = error ?? errorBorder!;
  }

  void get underline {
    _initializeAllBorder();

    baseBorder!.type = NikuInputBorderType.Underline;
    enabledBorder!.type = NikuInputBorderType.Underline;
    disabledBorder!.type = NikuInputBorderType.Underline;
    focusedBorder!.type = NikuInputBorderType.Underline;
    focusedErrorBorder!.type = NikuInputBorderType.Underline;
    errorBorder!.type = NikuInputBorderType.Underline;
  }

  void get outlined {
    _initializeAllBorder();

    baseBorder!.type = NikuInputBorderType.Outlined;
    enabledBorder!.type = NikuInputBorderType.Outlined;
    disabledBorder!.type = NikuInputBorderType.Outlined;
    focusedBorder!.type = NikuInputBorderType.Outlined;
    focusedErrorBorder!.type = NikuInputBorderType.Outlined;
    errorBorder!.type = NikuInputBorderType.Outlined;
  }

  void useBorderWidth(
    double? all,
    double? base,
    double? enabled,
    double? disabled,
    double? focused,
    double? focusedError,
    double? error,
  ) {
    _initializeAllBorder();

    baseBorder!.width = all ?? baseBorder?.width;
    enabledBorder!.width = enabled ?? enabledBorder?.width;
    disabledBorder!.width = disabled ?? disabledBorder?.width;
    focusedBorder!.width = focused ?? focusedBorder?.width;
    focusedErrorBorder!.width = focusedError ?? focusedErrorBorder?.width;
    errorBorder!.width = error ?? errorBorder?.width;
  }

  set borderWidth(double width) {
    if (baseBorder == null) baseBorder = NikuInputBorder();
    baseBorder?.width = width;
  }

  set enabledBorderWidth(double width) {
    if (enabledBorder == null) enabledBorder = NikuInputBorder();
    enabledBorder?.width = width;
  }

  set disabledBorderWidth(double width) {
    if (disabledBorder == null) disabledBorder = NikuInputBorder();
    disabledBorder?.width = width;
  }

  set focusedBorderWidth(double width) {
    if (focusedBorder == null) focusedBorder = NikuInputBorder();
    focusedBorder?.width = width;
  }

  set focusedErrororderWidth(double width) {
    if (focusedErrorBorder == null) focusedErrorBorder = NikuInputBorder();
    focusedErrorBorder?.width = width;
  }

  set errorBorderWidth(double width) {
    if (errorBorder == null) errorBorder = NikuInputBorder();
    errorBorder?.width = width;
  }

  void useBorderColor(
    Color? all,
    Color? base,
    Color? enabled,
    Color? disabled,
    Color? focused,
    Color? focusedError,
    Color? error,
  ) {
    _initializeAllBorder();

    baseBorder!.color = all ?? baseBorder?.color;
    enabledBorder!.color = enabled ?? enabledBorder?.color;
    disabledBorder!.color = disabled ?? disabledBorder?.color;
    focusedBorder!.color = focused ?? focusedBorder?.color;
    focusedErrorBorder!.color = focusedError ?? focusedErrorBorder?.color;
    errorBorder!.color = error ?? errorBorder?.color;
  }

  set baseBorderColor(Color color) {
    if (baseBorder == null) baseBorder = NikuInputBorder();
    baseBorder?.color = color;
  }

  set enabledBorderColor(Color color) {
    if (enabledBorder == null) enabledBorder = NikuInputBorder();
    enabledBorder?.color = color;
  }

  set disabledBorderColor(Color color) {
    if (disabledBorder == null) disabledBorder = NikuInputBorder();
    disabledBorder?.color = color;
  }

  set focusedBorderColor(Color color) {
    if (focusedBorder == null) focusedBorder = NikuInputBorder();
    focusedBorder?.color = color;
  }

  set focusedErrorBorderColor(Color color) {
    if (focusedErrorBorder == null) focusedErrorBorder = NikuInputBorder();
    focusedErrorBorder?.color = color;
  }

  set errorBorderColor(Color color) {
    if (errorBorder == null) errorBorder = NikuInputBorder();
    errorBorder?.color = color;
  }

  void useLabelStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (labelStyle == null) labelStyle = NikuTextStyle();

    labelStyle?.apply = v(labelStyle!);
  }

  set applyLabelStyle(NikuTextStyle v) {
    if (labelStyle == null) labelStyle = NikuTextStyle();

    labelStyle?.apply = v;
  }

  void useFloatingLabelStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (floatingLabelStyle == null) floatingLabelStyle = NikuTextStyle();

    floatingLabelStyle?.apply = v(floatingLabelStyle!);
  }

  set applyFloatingLabelStyle(NikuTextStyle v) {
    if (floatingLabelStyle == null) floatingLabelStyle = NikuTextStyle();

    floatingLabelStyle?.apply = v;
  }

  void useHelperStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (helperStyle == null) helperStyle = NikuTextStyle();

    helperStyle?.apply = v(helperStyle!);
  }

  set applyHelperStyle(NikuTextStyle v) {
    if (helperStyle == null) helperStyle = NikuTextStyle();

    helperStyle?.apply = v;
  }

  void useHintStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (hintStyle == null) hintStyle = NikuTextStyle();

    hintStyle?.apply = v(hintStyle!);
  }

  set applyHintStyle(NikuTextStyle v) {
    if (hintStyle == null) hintStyle = NikuTextStyle();

    hintStyle?.apply = v;
  }

  void useErrorStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (errorStyle == null) errorStyle = NikuTextStyle();

    errorStyle?.apply = v(errorStyle!);
  }

  set applyErrorStyle(NikuTextStyle v) {
    if (errorStyle == null) errorStyle = NikuTextStyle();

    errorStyle?.apply = v;
  }

  void usePrefixStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (prefixStyle == null) prefixStyle = NikuTextStyle();

    prefixStyle?.apply = v(prefixStyle!);
  }

  set applyPrefixStyle(NikuTextStyle v) {
    if (prefixStyle == null) prefixStyle = NikuTextStyle();

    prefixStyle?.apply = v;
  }

  void useSuffixStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (suffixStyle == null) suffixStyle = NikuTextStyle();

    suffixStyle?.apply = v(suffixStyle!);
  }

  set applySuffixStyle(NikuTextStyle v) {
    if (suffixStyle == null) suffixStyle = NikuTextStyle();

    suffixStyle?.apply = v;
  }

  void usePrefixIconConstraints(
      NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (prefixIconConstraints == null)
      prefixIconConstraints = NikuBoxConstraints();

    prefixIconConstraints?.apply = v(prefixIconConstraints!);
  }

  set applyPrefixIconConstraints(NikuBoxConstraints v) {
    if (prefixIconConstraints == null)
      prefixIconConstraints = NikuBoxConstraints();

    prefixIconConstraints?.apply = v;
  }

  void useSuffixIconConstraints(
      NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (suffixIconConstraints == null)
      suffixIconConstraints = NikuBoxConstraints();

    suffixIconConstraints?.apply = v(suffixIconConstraints!);
  }

  set applySuffixIconConstraints(NikuBoxConstraints v) {
    if (suffixIconConstraints == null)
      suffixIconConstraints = NikuBoxConstraints();

    suffixIconConstraints?.apply = v;
  }

  void useConstraints(NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (constraints == null) constraints = NikuBoxConstraints();

    constraints?.apply = v(constraints!);
  }

  set applyConstraints(NikuBoxConstraints v) {
    if (constraints == null) constraints = NikuBoxConstraints();

    constraints?.apply = v;
  }

  set apply(NikuInputDecoration? v) {
    if (v == null) return;

    if (labelStyle == null && v.labelStyle != null)
      labelStyle = NikuTextStyle();
    if (floatingLabelStyle == null && v.floatingLabelStyle != null)
      floatingLabelStyle = NikuTextStyle();
    if (helperStyle == null && v.helperStyle != null)
      helperStyle = NikuTextStyle();
    if (hintStyle == null && v.hintStyle != null) hintStyle = NikuTextStyle();
    if (errorStyle == null && v.errorStyle != null)
      errorStyle = NikuTextStyle();
    if (prefixIconConstraints == null && v.prefixIconConstraints != null)
      prefixIconConstraints = NikuBoxConstraints();
    if (prefixStyle == null && v.prefixStyle != null)
      prefixStyle = NikuTextStyle();
    if (suffixIconConstraints == null && v.suffixIconConstraints != null)
      suffixIconConstraints = NikuBoxConstraints();
    if (suffixStyle == null && v.suffixStyle != null)
      suffixStyle = NikuTextStyle();
    if (counterStyle == null && v.counterStyle != null)
      counterStyle = NikuTextStyle();
    if (constraints == null && v.constraints != null)
      constraints = NikuBoxConstraints();

    icon = v.icon ?? icon;
    label = v.label ?? label;
    labelText = v.labelText ?? labelText;
    labelStyle?.apply = v.labelStyle;
    floatingLabelStyle?.apply = v.floatingLabelStyle ?? floatingLabelStyle;
    helperText = v.helperText ?? helperText;
    helperStyle?.apply = v.helperStyle ?? helperStyle;
    helperMaxLines = v.helperMaxLines ?? helperMaxLines;
    hintText = v.hintText ?? hintText;
    hintStyle?.apply = v.hintStyle ?? hintStyle;
    hintTextDirection = v.hintTextDirection ?? hintTextDirection;
    hintMaxLines = v.hintMaxLines ?? hintMaxLines;
    errorText = v.errorText ?? errorText;
    errorStyle?.apply = v.errorStyle ?? errorStyle;
    errorMaxLines = v.errorMaxLines ?? errorMaxLines;
    floatingLabelBehavior = v.floatingLabelBehavior ?? floatingLabelBehavior;
    isDense = v.isDense ?? isDense;
    contentPadding?.apply = v.contentPadding ?? contentPadding;
    isCollapsed = v.isCollapsed ?? isCollapsed;
    prefixIcon = v.prefixIcon ?? prefixIcon;
    prefixIconConstraints?.apply =
        v.prefixIconConstraints ?? prefixIconConstraints;
    prefix = v.prefix ?? prefix;
    prefixText = v.prefixText ?? prefixText;
    prefixStyle?.apply = v.prefixStyle ?? prefixStyle;
    suffixIcon = v.suffixIcon ?? suffixIcon;
    suffix = v.suffix ?? suffix;
    suffixText = v.suffixText ?? suffixText;
    suffixStyle?.apply = v.suffixStyle ?? suffixStyle;
    suffixIconConstraints?.apply =
        v.suffixIconConstraints ?? suffixIconConstraints;
    counterText = v.counterText ?? counterText;
    counter = v.counter ?? counter;
    counterStyle?.apply = v.counterStyle ?? counterStyle;
    filled = v.filled ?? filled;
    fillColor = v.fillColor ?? fillColor;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    errorBorder = v.errorBorder ?? errorBorder;
    focusedBorder = v.focusedBorder ?? focusedBorder;
    focusedErrorBorder = v.focusedErrorBorder ?? focusedErrorBorder;
    disabledBorder = v.disabledBorder ?? disabledBorder;
    enabledBorder = v.enabledBorder ?? enabledBorder;
    baseBorder = v.baseBorder ?? baseBorder;
    enabled = v.enabled ?? enabled;
    semanticCounterText = v.semanticCounterText ?? semanticCounterText;
    alignLabelWithHint = v.alignLabelWithHint ?? alignLabelWithHint;
    constraints?.apply = v.constraints ?? constraints;
  }

  NikuInputDecoration get copy => NikuInputDecoration(
        icon: icon,
        label: label,
        labelText: labelText,
        labelStyle: labelStyle,
        floatingLabelStyle: floatingLabelStyle,
        helperText: helperText,
        helperStyle: helperStyle,
        helperMaxLines: helperMaxLines,
        hintText: hintText,
        hintStyle: hintStyle,
        hintTextDirection: hintTextDirection,
        hintMaxLines: hintMaxLines,
        errorText: errorText,
        errorStyle: errorStyle,
        errorMaxLines: errorMaxLines,
        floatingLabelBehavior: floatingLabelBehavior,
        isDense: isDense,
        contentPadding: contentPadding,
        isCollapsed: isCollapsed,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints,
        prefix: prefix,
        prefixText: prefixText,
        prefixStyle: prefixStyle,
        suffixIcon: suffixIcon,
        suffix: suffix,
        suffixText: suffixText,
        suffixStyle: suffixStyle,
        suffixIconConstraints: suffixIconConstraints,
        counterText: counterText,
        counter: counter,
        counterStyle: counterStyle,
        filled: filled,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        errorBorder: errorBorder,
        focusedBorder: focusedBorder,
        focusedErrorBorder: focusedErrorBorder,
        disabledBorder: disabledBorder,
        enabledBorder: enabledBorder,
        baseBorder: baseBorder,
        enabled: enabled,
        semanticCounterText: semanticCounterText,
        alignLabelWithHint: alignLabelWithHint,
        constraints: constraints,
      );

  InputDecoration get value => InputDecoration(
        icon: icon,
        label: label,
        labelText: labelText,
        labelStyle: labelStyle?.value,
        floatingLabelStyle: floatingLabelStyle?.value,
        helperText: helperText,
        helperStyle: helperStyle?.value,
        helperMaxLines: helperMaxLines,
        hintText: hintText,
        hintStyle: hintStyle?.value,
        hintTextDirection: hintTextDirection,
        hintMaxLines: hintMaxLines,
        errorText: errorText,
        errorStyle: errorStyle?.value,
        errorMaxLines: errorMaxLines,
        floatingLabelBehavior: floatingLabelBehavior,
        isDense: isDense,
        contentPadding: contentPadding?.value,
        isCollapsed: isCollapsed ?? false,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints?.value,
        prefix: prefix,
        prefixText: prefixText,
        prefixStyle: prefixStyle?.value,
        suffixIcon: suffixIcon,
        suffix: suffix,
        suffixText: suffixText,
        suffixStyle: suffixStyle?.value,
        suffixIconConstraints: suffixIconConstraints?.value,
        counterText: counterText,
        counter: counter,
        counterStyle: counterStyle?.value,
        filled: filled,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        errorBorder: errorBorder != null
            ? (errorBorder!.type == NikuInputBorderType.Outlined
                ? errorBorder!.outlined
                : errorBorder!.value)
            : null,
        focusedBorder: focusedBorder != null
            ? (focusedBorder!.type == NikuInputBorderType.Outlined
                ? focusedBorder!.outlined
                : focusedBorder!.value)
            : null,
        focusedErrorBorder: focusedErrorBorder != null
            ? (focusedErrorBorder!.type == NikuInputBorderType.Outlined
                ? focusedErrorBorder!.outlined
                : focusedErrorBorder!.value)
            : null,
        disabledBorder: disabledBorder != null
            ? (disabledBorder!.type == NikuInputBorderType.Outlined
                ? disabledBorder!.outlined
                : disabledBorder!.value)
            : null,
        enabledBorder: enabledBorder != null
            ? (enabledBorder!.type == NikuInputBorderType.Outlined
                ? enabledBorder!.outlined
                : enabledBorder!.value)
            : null,
        border: baseBorder != null
            ? (baseBorder!.type == NikuInputBorderType.Outlined
                ? baseBorder!.outlined
                : baseBorder!.value)
            : null,
        enabled: enabled ?? true,
        semanticCounterText: semanticCounterText,
        alignLabelWithHint: alignLabelWithHint,
        constraints: constraints?.value,
      );
}

extension TransformNikuInputDecoration on InputDecoration {
  NikuInputDecoration get niku {
    return NikuInputDecoration(
      icon: icon,
      label: label,
      labelText: labelText,
      labelStyle: labelStyle?.asNiku,
      floatingLabelStyle: floatingLabelStyle?.asNiku,
      helperText: helperText,
      helperStyle: helperStyle?.asNiku,
      helperMaxLines: helperMaxLines,
      hintText: hintText,
      hintStyle: hintStyle?.asNiku,
      hintTextDirection: hintTextDirection,
      hintMaxLines: hintMaxLines,
      errorText: errorText,
      errorStyle: errorStyle?.asNiku,
      errorMaxLines: errorMaxLines,
      floatingLabelBehavior: floatingLabelBehavior,
      isDense: isDense,
      contentPadding: contentPadding?.asNiku,
      isCollapsed: isCollapsed,
      prefixIcon: prefixIcon,
      prefixIconConstraints: prefixIconConstraints?.asNiku,
      prefix: prefix,
      prefixText: prefixText,
      prefixStyle: prefixStyle?.asNiku,
      suffixIcon: suffixIcon,
      suffix: suffix,
      suffixText: suffixText,
      suffixStyle: suffixStyle?.asNiku,
      suffixIconConstraints: suffixIconConstraints?.asNiku,
      counterText: counterText,
      counter: counter,
      counterStyle: counterStyle?.asNiku,
      filled: filled,
      fillColor: fillColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      errorBorder: errorBorder?.asNiku,
      focusedBorder: focusedBorder?.asNiku,
      focusedErrorBorder: focusedErrorBorder?.asNiku,
      disabledBorder: disabledBorder?.asNiku,
      enabledBorder: enabledBorder?.asNiku,
      baseBorder: border?.asNiku,
      enabled: enabled,
      semanticCounterText: semanticCounterText,
      alignLabelWithHint: alignLabelWithHint,
      constraints: constraints?.asNiku,
    );
  }
}

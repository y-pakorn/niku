import 'package:flutter/material.dart';

import 'package:niku/macros/macros.dart';
import 'package:niku/objects/textStyle.dart';
import 'package:niku/proxy/textStyle.dart';

// ignore: must_be_immutable
class NikuDropdownButton<T> extends StatelessWidget
    with
        NikuBuildMacro<NikuDropdownButton>,
        UseQueryMacro<NikuDropdownButton>,
        ApplyTextMacro,
        AlignmentDirectionalMacro,
        TextStyleProxy {
  List<DropdownMenuItem<T>>? items;
  List<T>? itemsValue;
  T? value;
  Widget? hint;
  Widget? disabledHint;
  ValueChanged<T?>? onChanged;
  VoidCallback? onTap;
  DropdownButtonBuilder? selectedItemBuilder;
  int? elevation;
  NikuTextStyle? style;
  Widget? underline;
  Widget? icon;
  Color? iconDisabledColor;
  Color? iconEnabledColor;
  double? iconSize;
  bool? isDense;
  bool? isExpanded;
  double? itemHeight;
  Color? focusColor;
  FocusNode? focusNode;
  bool? autofocus;
  Color? dropdownColor;
  double? menuMaxHeight;
  bool? enableFeedback;
  AlignmentGeometry? alignment;
  BorderRadius? borderRadius;

  NikuDropdownButton(
    this.value, {
    Key? key,
    this.selectedItemBuilder,
    this.items,
    this.hint,
    this.disabledHint,
    this.onChanged,
    this.onTap,
    this.elevation,
    this.style,
    this.underline,
    this.icon,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.iconSize,
    this.isDense,
    this.isExpanded,
    this.itemHeight,
    this.focusColor,
    this.focusNode,
    this.autofocus,
    this.dropdownColor,
    this.menuMaxHeight,
    this.enableFeedback,
    this.alignment,
    this.borderRadius,
    this.itemsValue,
  }) : super(key: key);

  useTextStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      style = v(style ?? NikuTextStyle());

  void get noUnderline => underline = SizedBox.shrink();

  NikuDropdownButton get self => this;

  set apply(NikuDropdownButton? v) {
    if (v == null) return;

    selectedItemBuilder = v.selectedItemBuilder ?? selectedItemBuilder;
    hint = v.hint ?? hint;
    disabledHint = v.disabledHint ?? disabledHint;
    onChanged = v.onChanged ?? onChanged;
    onTap = v.onTap ?? onTap;
    elevation = v.elevation ?? elevation;
    style = v.style ?? style;
    underline = v.underline ?? underline;
    icon = v.icon ?? icon;
    iconDisabledColor = v.iconDisabledColor ?? iconDisabledColor;
    iconEnabledColor = v.iconEnabledColor ?? iconEnabledColor;
    iconSize = v.iconSize ?? iconSize;
    isDense = v.isDense ?? isDense;
    isExpanded = v.isExpanded ?? isExpanded;
    itemHeight = v.itemHeight ?? itemHeight;
    focusColor = v.focusColor ?? focusColor;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;
    dropdownColor = v.dropdownColor ?? dropdownColor;
    menuMaxHeight = v.menuMaxHeight ?? menuMaxHeight;
    enableFeedback = v.enableFeedback ?? enableFeedback;
    alignment = v.alignment ?? alignment;
    borderRadius = v.borderRadius ?? borderRadius;
    $internalParent..addAll(v.$internalParent);
  }

  get copied => NikuDropdownButton<T>(
        value,
        items: items,
        selectedItemBuilder: selectedItemBuilder,
        hint: hint,
        disabledHint: disabledHint,
        onChanged: onChanged,
        onTap: onTap,
        elevation: elevation,
        style: style,
        underline: underline,
        icon: icon,
        iconDisabledColor: iconDisabledColor,
        iconEnabledColor: iconEnabledColor,
        iconSize: iconSize,
        isDense: isDense,
        isExpanded: isExpanded,
        itemHeight: itemHeight,
        focusColor: focusColor,
        focusNode: focusNode,
        autofocus: autofocus,
        dropdownColor: dropdownColor,
        menuMaxHeight: menuMaxHeight,
        enableFeedback: enableFeedback,
        alignment: alignment,
        borderRadius: borderRadius,
        itemsValue: itemsValue,
      )..$internalParent.addAll($internalParent);

  get widget => DropdownButton<T>(
        items: items ??
            itemsValue
                ?.map(
                  (v) => DropdownMenuItem<T>(
                    value: v,
                    child: Text(
                      v.toString(),
                    ),
                  ),
                )
                .toList(growable: false),
        selectedItemBuilder: selectedItemBuilder,
        value: value,
        hint: hint,
        disabledHint: disabledHint,
        onChanged: onChanged,
        onTap: onTap,
        elevation: elevation ?? 8,
        style: style?.value,
        underline: underline,
        icon: icon,
        iconDisabledColor: iconDisabledColor,
        iconEnabledColor: iconEnabledColor,
        iconSize: iconSize ?? 24.0,
        isDense: isDense ?? false,
        isExpanded: isExpanded ?? false,
        itemHeight: itemHeight ?? kMinInteractiveDimension,
        focusColor: focusColor,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        dropdownColor: dropdownColor,
        menuMaxHeight: menuMaxHeight,
        enableFeedback: enableFeedback,
        alignment: alignment ?? AlignmentDirectional.centerStart,
        borderRadius: borderRadius,
      );
}

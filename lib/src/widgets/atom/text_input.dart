import 'package:flutter/material.dart'
    show
        BuildContext,
        Color,
        Colors,
        Column,
        CrossAxisAlignment,
        Key,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Theme,
        Widget,
        Wrap,
        WrapCrossAlignment;

import 'require_chip.dart';

class InputField extends StatelessWidget {
  final Widget child;
  final String? label;
  final bool required;
  final TextStyle? labelStyle;
  final Color? requiredColor;

  const InputField({
    Key? key,
    required this.child,
    this.label,
    this.required = false,
    this.labelStyle,
    this.requiredColor = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          children: [
            if (label != null)
              Text(
                label!,
                style: (labelStyle ?? Theme.of(context).textTheme.bodyLarge)!
                    .copyWith(
                  height: 0,
                ),
              ),
            if (required == true) const RequiredChip()
          ],
        ),
        if (label != null) SizedBox(height: required ? 8 : 16),
        child,
      ],
    );
  }
}

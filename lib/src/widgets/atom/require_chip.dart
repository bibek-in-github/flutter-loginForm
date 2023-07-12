import 'package:flutter/material.dart'
    show
        BorderRadius,
        BorderSide,
        BuildContext,
        Chip,
        Color,
        Colors,
        Radius,
        RoundedRectangleBorder,
        StatelessWidget,
        Text,
        Theme,
        VisualDensity,
        Widget;

class RequiredChip extends StatelessWidget {
  const RequiredChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      visualDensity: const VisualDensity(vertical: -4),
      label: const Text(
        "Required",
      ),
      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.red,
            fontSize: 12,
            height: 0,
          ),
      backgroundColor: Color(0xFFFFF7F8),
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
    );
  }
}

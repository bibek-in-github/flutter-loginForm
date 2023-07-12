import 'package:flutter/material.dart'
    show
        AutovalidateMode,
        BoxConstraints,
        BuildContext,
        Colors,
        EdgeInsets,
        EdgeInsetsGeometry,
        FontWeight,
        FormFieldValidator,
        Icon,
        IconButton,
        Icons,
        InputBorder,
        InputDecoration,
        Key,
        Padding,
        SizedBox,
        State,
        StatefulWidget,
        TextAlign,
        TextAlignVertical,
        TextEditingController,
        TextInputType,
        TextStyle,
        Theme,
        ValueChanged,
        Widget;
import 'package:flutter/services.dart' show TextInputFormatter;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart'
    show FormBuilderTextField;
import 'package:login_form/src/widgets/atom/text_input.dart';

class TextInput extends StatefulWidget {
  final TextAlign textAlign;
  final String name;
  final ValueChanged<String?>? onChanged;
  final String? label;
  final String? hintText;
  final String? helperText;
  final bool required;
  final bool enabled;
  final int? maxLength;
  final int? maxLines;
  final bool? showCounter;
  final bool obscureText;
  final TextStyle? style;

  final Widget? suffix;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;

  final Widget? prefix;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;

  final TextStyle? hintStyle;
  final TextStyle? helperStyle;
  final TextStyle? labelStyle;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final TextAlignVertical? textAlignVertical;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final EdgeInsetsGeometry? contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode autovalidateMode;
  final TextEditingController? controller;
  final String? initialValue;
  final int? helperMaxLines;

  const TextInput({
    Key? key,
    required this.name,
    this.label,
    this.onChanged,
    this.hintText,
    this.required = false,
    this.maxLength,
    this.maxLines = 1,
    this.inputFormatters,
    this.showCounter,
    this.validator,
    this.obscureText = false,
    this.style,
    this.enabled = true,
    this.labelStyle,
    this.keyboardType,
    this.textAlignVertical,
    this.suffix,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.prefix,
    this.prefixIcon = const SizedBox(width: 12),
    this.prefixIconConstraints = const BoxConstraints(minWidth: 12),
    this.border,
    this.enabledBorder,
    this.disabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.helperText,
    this.contentPadding,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.controller,
    this.initialValue,
    this.helperStyle,
    this.helperMaxLines,
  }) : super(key: key);

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _secureText = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _secureText = widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InputField(
      label: widget.label,
      required: widget.required,
      labelStyle: widget.labelStyle,
      child: FormBuilderTextField(
        inputFormatters: widget.inputFormatters,
        initialValue: widget.initialValue,
        controller: widget.controller,
        key: widget.key,
        autovalidateMode: widget.autovalidateMode,
        textAlignVertical: widget.textAlignVertical,
        name: widget.name,
        textAlign: widget.textAlign,
        keyboardType: widget.keyboardType,
        style: (widget.style ??
                Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ))
            ?.copyWith(
          color: widget.enabled ? Colors.black : Colors.grey.shade600,
        ),
        obscureText: _secureText,
        onChanged: widget.onChanged,
        validator: widget.validator,
        maxLength: widget.maxLength,
        maxLines: widget.obscureText ? 1 : widget.maxLines,
        enabled: widget.enabled,
        decoration: InputDecoration(
          helperMaxLines: widget.helperMaxLines,
          fillColor: Colors.grey[200],
          filled: true,
          border: widget.border,
          enabledBorder: widget.enabledBorder,
          disabledBorder: widget.disabledBorder,
          focusedBorder: widget.focusedBorder,
          errorBorder: widget.errorBorder,
          focusedErrorBorder: widget.focusedErrorBorder,
          enabled: widget.enabled,
          hintText: widget.hintText,
          helperText: widget.helperText,
          helperStyle: widget.helperStyle,
          hintStyle: widget.hintStyle,
          counterText: widget.showCounter == false ? "" : null,
          prefix: widget.prefix,
          prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10.0), child: widget.prefixIcon),
          prefixIconConstraints: widget.prefixIconConstraints,
          suffix: widget.suffix,
          suffixIcon: widget.obscureText == true
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _secureText = !_secureText;
                    });
                  },
                  icon: Icon(
                    _secureText == true
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Colors.grey,
                  ),
                )
              : widget.suffixIcon,
          suffixIconConstraints: widget.suffixIconConstraints,
        ),
      ),
    );
  }
}

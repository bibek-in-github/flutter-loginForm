import 'package:flutter/material.dart' show GlobalKey;
import 'package:flutter_form_builder/flutter_form_builder.dart'
    show FormBuilderState;
import '../../app.dart';

mixin SignupViewModel {
  final formKey = GlobalKey<FormBuilderState>();
  onRegister() {
    App.dismissKeyboard();
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      final data = Map<String, dynamic>.from(formKey.currentState!.value);
    }
  }
}

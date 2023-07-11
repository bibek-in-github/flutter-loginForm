import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart'
    show FormBuilderValidators;

mixin AuthValidator {
  final FormFieldValidator<String> passwordValidator =
      FormBuilderValidators.compose([
    FormBuilderValidators.required(
      errorText: "Please enter your password",
    ),
    FormBuilderValidators.minLength(
      6,
      errorText: "Password must be more than 6 characters",
    ),
  ]);
  FormFieldValidator<String> emailValidator = FormBuilderValidators.compose([
    FormBuilderValidators.required(
      errorText: "Please provide a valid email",
    ),
    FormBuilderValidators.email(
      errorText: "Please provide a valid email",
    ),
  ]);
  FormFieldValidator<String> userNameValidator = FormBuilderValidators.compose([
    FormBuilderValidators.required(
      errorText: "Please provide a name",
    ),
    FormBuilderValidators.equalLength(
      4,
      errorText: "user name is incorrect",
    ),
  ]);
}

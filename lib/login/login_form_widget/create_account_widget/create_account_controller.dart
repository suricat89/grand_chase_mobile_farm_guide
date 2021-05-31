import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/shared/enum/password_criteria_enum.dart';
import 'package:grand_chase_farm_guide/shared/models/password_criteria_model.dart';

class CreateAccountController {
  final userNameNotifier = ValueNotifier<String>("");
  set userName(String value) => userNameNotifier.value = value;
  String get userName => userNameNotifier.value;

  final passwordNotifier = ValueNotifier<String>("");
  set password(String value) {
    passwordNotifier.value = value;
    this.passwordCriteria = this.passwordCriteria.map((criteriaItem) {
      return PasswordCriteriaModel(
        criteria: criteriaItem.criteria,
        description: criteriaItem.description,
        isValid: criteriaItem.evaluateCriteria(value),
      );
    }).toList();
  }

  String get password => passwordNotifier.value;

  final displayPasswordNotifier = ValueNotifier<bool>(false);
  set displayPassword(bool value) => displayPasswordNotifier.value = value;
  bool get displayPassword => displayPasswordNotifier.value;

  final passwordCriteriaNotifier =
      ValueNotifier<List<PasswordCriteriaModel>>([]);
  set passwordCriteria(List<PasswordCriteriaModel> value) =>
      passwordCriteriaNotifier.value = value;
  List<PasswordCriteriaModel> get passwordCriteria =>
      passwordCriteriaNotifier.value;

  CreateAccountController() {
    passwordCriteria = [
      PasswordCriteriaModel(
          description: "Pelo menos 8 caracteres",
          criteria: PasswordCriteria.Size),
      PasswordCriteriaModel(
          description: "Letra(s) maiúscula(s)",
          criteria: PasswordCriteria.UpperCaseChar),
      PasswordCriteriaModel(
          description: "Letra(s) minúscula(s)",
          criteria: PasswordCriteria.LowerCaseChar),
      PasswordCriteriaModel(
          description: "Número(s)", criteria: PasswordCriteria.Number),
    ];
  }
}

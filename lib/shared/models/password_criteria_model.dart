import 'package:grand_chase_farm_guide/shared/enum/password_criteria_enum.dart';

class PasswordCriteriaModel {
  PasswordCriteria criteria;
  String description;
  bool isValid;

  PasswordCriteriaModel(
      {required this.criteria, required this.description, this.isValid: false});

  bool evaluateCriteria(String password) {
    switch (criteria) {
      case PasswordCriteria.Size:
        return password.length >= 8;
      case PasswordCriteria.UpperCaseChar:
        return password.contains(RegExp(r'[A-Z]'));
      case PasswordCriteria.LowerCaseChar:
        return password.contains(RegExp(r'[a-z]'));
      case PasswordCriteria.Number:
        return password.contains(RegExp(r'[0-9]'));
    }
  }
}

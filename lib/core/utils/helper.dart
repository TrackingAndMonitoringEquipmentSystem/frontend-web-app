import 'package:frontend_web_app/core/utils/enum.dart';

Gender genderFromString(String value) {
  switch (value) {
    case 'male':
      return Gender.male;
    case 'female':
      return Gender.female;
    case 'other':
      return Gender.other;
    default:
      return Gender.unknown;
  }
}

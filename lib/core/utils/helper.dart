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

Role roleFromString(String value) {
  switch (value) {
    case 'super_admin':
      return Role.Superadmin;
    case 'admin':
      return Role.Admin;
    case 'master_maintainer':
      return Role.Masteraintainer;
    case 'maintainer':
      return Role.Maintainer;
    default:
      return Role.User;
  }
}

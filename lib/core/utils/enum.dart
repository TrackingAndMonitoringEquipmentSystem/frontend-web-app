enum Role { Superadmin, Admin, Masteraintainer, Maintainer, User }

extension RoleExtension on Role {
  String toNameString() {
    switch (this) {
      case Role.Superadmin:
        return 'Super admin';
      case Role.Admin:
        return 'Admin';
      case Role.Masteraintainer:
        return 'Master maintaner';
      case Role.Maintainer:
        return 'Maintainer';
      case Role.User:
        return 'User';
      default:
        return 'unknown role';
    }
  }
}

enum EquipmentStatus { late }
enum ManagementLockerAndEquipmentView { department, location, equipment }
enum ManagementLocationView { building, floor, room }
enum StreamAndRecordView { department, location }
enum Gender { male, female, other, unknown }

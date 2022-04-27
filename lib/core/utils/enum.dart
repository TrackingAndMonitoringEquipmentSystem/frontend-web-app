enum Role { superAdmin, admin, masterMaintainer, maintainer, user }

extension RoleExtension on Role {
  String toNameString() {
    switch (this) {
      case Role.superAdmin:
        return 'Super admin';
      case Role.admin:
        return 'Admin';
      case Role.masterMaintainer:
        return 'Master maintaner';
      case Role.maintainer:
        return 'Maintainer';
      case Role.user:
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

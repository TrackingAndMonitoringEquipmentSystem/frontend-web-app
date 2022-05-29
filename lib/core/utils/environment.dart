const String baseSchema = 'https';
const String baseApiUrl = 'toollo-api.godprogrammer.dev';
const int baseApiPort = 443;
enum PublicsPath { getDepartments }
enum AuthenPath { register, signIn, signOut }
enum LockerPath {
  getLockersByDepartment,
  getLockers,
  registerLocker,
  addEquipment,
  viewLocker,
  getUnregister
}
enum EquipmentPath { saveEquipments, getEquipments, getTypes }
enum LocationPath { getBuildings }
enum DepartmentPath { getDepartments, getLockers }
enum UserPath { getUsers, addUser, addUserByCsv, getBlockUser, getWaitingUser }

const Map<PublicsPath, String> publics = {
  PublicsPath.getDepartments: '/publics/departments'
};

const Map<AuthenPath, String> authen = {
  AuthenPath.register: '/authen/register',
  AuthenPath.signIn: '/authen/signin',
  AuthenPath.signOut: '/authen/signout'
};

const Map<LockerPath, String> lockers = {
  LockerPath.getLockersByDepartment: '/lockers/lockersByDepartment',
  LockerPath.getLockers: '/lockers',
  LockerPath.registerLocker: '/lockers/registerLocker',
  LockerPath.addEquipment: '/lockers/addEquipment',
  LockerPath.viewLocker: '/lockers/viewLocker',
  LockerPath.getUnregister: '/lockers/getUnregister'
};

const Map<LocationPath, String> location = {
  LocationPath.getBuildings: '/location/buildings',
};

const Map<DepartmentPath, String> department = {
  DepartmentPath.getDepartments: '/department',
  DepartmentPath.getLockers: '/department/viewLockerByDepartment',
};
const Map<EquipmentPath, String> equipment = {
  EquipmentPath.saveEquipments: '/equipment/saveEquipments',
  EquipmentPath.getEquipments: '/equipment',
  EquipmentPath.getTypes: '/type-equipment'
};

const Map<UserPath, String> user = {
  UserPath.getUsers: '/users',
  UserPath.addUser: '/users/createOnWeb',
  UserPath.addUserByCsv: '/users/upload',
  UserPath.getBlockUser: '/users/getBlockedUser',
  UserPath.getWaitingUser: 'users/getWaitingUser',
};

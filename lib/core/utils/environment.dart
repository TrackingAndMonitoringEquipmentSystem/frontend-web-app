const String baseSchema = 'https';
const String baseApiUrl = '471a-161-246-5-161.ap.ngrok.io';
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
enum EquipmentPath { saveEquipments, getEquipments }
enum LocationPath { getBuildings }
enum DepartmentPath { getDepartments, getLockers }
enum UserPath { getUsers }

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
};

const Map<UserPath, String> user = {
  UserPath.getUsers: '/users',
};

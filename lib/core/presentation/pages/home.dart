import 'package:auto_route/auto_route.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/features/authentication/domain/value_objects/value_objects.dart';
import 'package:frontend_web_app/injection.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends HookWidget {
  final int? currentTab;

  HomePage({this.currentTab});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final state = useState(currentTab ?? 0);
    final _routes = [
      PermissionManagementMainRoute(),
      ManageLockerAndEquipmentMainRoute(),
      // StreamingAndRecordMainRoute(),
      // RepairReportMainRoute()
    ];
    final authenticationRepository = getIt<AuthenticationRepository>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: SvgPicture.asset(
          'assets/icons/core/svg/logo_with_toollo_icon_medium.svg',
          width: 190 * 0.8,
          height: 44 * 0.8,
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: CircleAvatar(
              radius: 18,
              backgroundImage:
                  Image.asset('assets/images/core/profile_image_small.jpg')
                      .image,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Saitan Kittibullungkul',
                  style: Theme.of(context).primaryTextTheme.bodyText1),
              Text(
                'Super admin | แผนกบริหาร',
                style: Theme.of(context).primaryTextTheme.caption!.copyWith(
                      color: Colors.grey.shade800,
                      fontSize: 12,
                    ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.4, horizontal: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: Colors.grey.shade200,
                onPrimary: Colors.grey.shade400,
                shadowColor: Theme.of(context).colorScheme.secondary,
                elevation: 0,
              ),
              child: Icon(
                Icons.notifications,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.4),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: Colors.grey.shade200,
                onPrimary: Colors.grey.shade400,
                shadowColor: Theme.of(context).colorScheme.secondary,
                elevation: 0,
              ),
              child: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              onPressed: () {
                showMenu(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    position: RelativeRect.fromLTRB(
                        size.width * (100 / size.width),
                        size.height * (60 / size.height),
                        size.width * (40 / size.width),
                        0.0),
                    items: [
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(Ionicons.person_outline, size: 16),
                          SizedBox(width: 12),
                          Text('ข้อมูลส่วนตัว',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2),
                        ],
                      )),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(Ionicons.key_outline, size: 16),
                          SizedBox(width: 12),
                          Text('เปลี่ยนรหัสผ่าน',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2),
                        ],
                      )),
                      PopupMenuItem(
                          onTap: () {
                            getIt<AuthenticationRepository>().signOut().then(
                                  (value) => AutoRouter.of(context)
                                      .replace(const SignInRoute()),
                                );
                          },
                          child: Row(
                            children: [
                              Icon(Ionicons.log_out_outline, size: 16),
                              SizedBox(width: 12),
                              Text('ออกจากระบบ',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText2),
                            ],
                          )),
                    ]);
              },
            ),
          ),
          SizedBox(
            width: 32,
          ),
        ],
      ),
      body: Row(
        children: [
          //sidebar
          Expanded(
            flex: 3,
            child: Drawer(
              backgroundColor: Theme.of(context).colorScheme.surface,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      drawerListTile(
                        context: context,
                        isActive: 0 == state.value,
                        title: 'การจัดการสิทธิ์',
                        icon: FluentIcons.people_community_24_regular,
                        press: () {
                          AutoRouter.of(context).replace(_routes[0]);
                          state.value = 0;
                          print('state : ' + state.value.toString());
                        },
                      ),
                      drawerListTile(
                        context: context,
                        isActive: 1 == state.value,
                        title: 'ตู้และอุปกรณ์',
                        icon: FluentIcons.xbox_console_24_regular,
                        press: () {
                          AutoRouter.of(context).replace(_routes[1]);

                          state.value = 1;
                          print('state : ' + state.value.toString());
                        },
                      ),
                      // drawerListTile(
                      //   context: context,
                      //   isActive: 2 == state.value,
                      //   title: 'กล้องและวิดีโอ',
                      //   icon: FluentIcons.video_24_regular,
                      //   press: () {
                      //     AutoRouter.of(context).replace(_routes[2]);

                      //     state.value = 2;
                      //     print('state : ' + state.value.toString());
                      //   },
                      // ),
                      // drawerListTile(
                      //   context: context,
                      //   isActive: 3 == state.value,
                      //   title: 'การแจ้งซ่อม',
                      //   icon: FluentIcons.toolbox_24_regular,
                      //   press: () {
                      //     AutoRouter.of(context).replace(_routes[3]);

                      //     state.value = 3;
                      //     print('state : ' + state.value.toString());
                      //   },
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //body
          Expanded(flex: 17, child: AutoRouter())
        ],
      ),
    );
  }

  Widget drawerListTile({
    required BuildContext context,
    required bool isActive,
    required String title,
    required IconData icon,
    required void Function() press,
  }) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final blackColor = Colors.grey.shade600;
    final secondaryColor = Theme.of(context).colorScheme.secondary;
    final surfaceColor = Theme.of(context).colorScheme.surface;
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      horizontalTitleGap: 0.0,
      tileColor: isActive == true ? secondaryColor : surfaceColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      leading: Icon(
        icon,
        color: isActive == true ? primaryColor : blackColor,
        size: 20,
      ),
      title: Text(
        title,
        style: Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
              color: isActive == true ? primaryColor : blackColor,
            ),
      ),
      onTap: press,
    );
  }
}

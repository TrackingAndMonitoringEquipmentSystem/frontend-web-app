import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/pages/scaling.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends HookWidget {
  // static var state = useState(0);
  @override
  Widget build(BuildContext context) {
    final state = useState(0);
    final _routes = [
      PermissionManagementMainRoute(),
      LockerAndEquipmentMainRoute(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: SvgPicture.asset(
          'assets/icons/core/svg/logo_with_toollo_icon_medium.svg',
          width: scaling(190),
          height: scaling(44),
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
              color: Theme.of(context).dividerColor,
              width: 1,
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              Icons.notifications,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
          SizedBox(
            width: scaling(48),
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
                      DrawerListTile(
                        routes: 0,
                        state: state.value,
                        title: 'การจัดการสิทธิ์',
                        svgSrc: 'assets/icons/core/svg/people_icon_small.svg',
                        press: () {
                          AutoRouter.of(context).replace(_routes[0]);
                          state.value = 0;
                        },
                      ),
                      DrawerListTile(
                        routes: 1,
                        state: state.value,
                        title: 'ตู้และอุปกรณ์',
                        svgSrc: 'assets/icons/core/svg/locker_icon_small.svg',
                        press: () {
                          AutoRouter.of(context).replace(_routes[1]);
                          state.value = 1;
                        },
                      ),
                      DrawerListTile(
                        routes: 2,
                        state: state.value,
                        title: 'กล้องและวิดีโอ',
                        svgSrc: 'assets/icons/core/svg/camera_icon_small.svg',
                        press: () {},
                      ),
                      DrawerListTile(
                        routes: 3,
                        state: state.value,
                        title: 'การแจ้งซ่อม',
                        svgSrc: 'assets/icons/core/svg/tool_icon_small.svg',
                        press: () {},
                      ),
                      DrawerListTile(
                        routes: 4,
                        state: state.value,
                        title: 'การแจ้งปัญหา',
                        svgSrc: 'assets/icons/core/svg/report_icon_small.svg',
                        press: () {},
                      )
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
}

class DrawerListTile extends HookWidget {
  const DrawerListTile({
    Key? key,
    required this.routes,
    required this.state,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final int routes, state;

  @override
  Widget build(BuildContext context) {
    debugPrint('v' + state.toString());
    debugPrint('r' + routes.toString());
    final primaryColor = Theme.of(context).colorScheme.primary;
    final blackColor = Colors.grey.shade600;
    final secondaryColor = Theme.of(context).colorScheme.secondary;
    final surfaceColor = Theme.of(context).colorScheme.surface;
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      horizontalTitleGap: 0.0,
      minVerticalPadding: 10,
      tileColor:
          state.toString() == routes.toString() ? secondaryColor : surfaceColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      leading: SvgPicture.asset(
        svgSrc,
        color:
            state.toString() == routes.toString() ? primaryColor : blackColor,
        height: 20,
      ),
      title: Text(
        // HomePage.state.value.toString(),
        title,
        style: Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
              color: state.toString() == routes.toString()
                  ? primaryColor
                  : blackColor,
            ),
      ),
      onTap: press,
    );
  }
}

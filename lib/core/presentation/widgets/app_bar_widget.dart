import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends HookWidget with PreferredSizeWidget {
  final String name;
  final String role;
  final String department;
  final String imgSrc;
  final String currentPath;
  final List<String> path;
  final List<void Function()> onPressed;
  // final Widget body;
  const AppBarWidget({
    required this.path,
    required this.onPressed,
    required this.currentPath,
    // required this.body,
    this.imgSrc = 'assets/images/core/profile_image_small.jpg',
    this.name = 'Saitan Kittibullungkul',
    this.role = 'Super admin',
    this.department = 'Hardware Lab',
  });
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    List<Widget> tableChildren = [];
    for (var i = 0; i < path.length; i++) {
      tableChildren.add(
        Row(
          children: [
            TextButton(
              onPressed: onPressed[i],
              child: Text(path[i],
                  style: Theme.of(context).primaryTextTheme.subtitle1!.copyWith(
                        color: Colors.grey.shade500,
                      )),
            ),
            Icon(
              Icons.chevron_right_outlined,
              color: Colors.grey.shade500,
            ),
          ],
        ),
      );
    }
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: SvgPicture.asset(
        'assets/icons/core/svg/logo_icon_medium.svg',
        width: 40 * 0.8,
        height: 40 * 0.8,
      ),
      flexibleSpace: SafeArea(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(56, 14, 0.0, 0.0),
              child: Row(
                children: [
                  ...tableChildren,
                  Text(
                    currentPath,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .subtitle1!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      actions: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: CircleAvatar(
            radius: 18,
            backgroundImage: Image.asset(imgSrc).image,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: Theme.of(context).primaryTextTheme.bodyText1),
            Text(
              role + ' | ' + department,
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
          width: 48 * 0.8,
        ),
      ],
    );
  }
}

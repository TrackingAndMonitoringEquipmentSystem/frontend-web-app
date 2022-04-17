import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PrimaryTabBarWidget extends HookWidget {
  final void Function(int) onTap;
  final List<Widget> tabs;

  const PrimaryTabBarWidget({
    required this.onTap,
    required this.tabs,

    // this.tableRow,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 72 * 0.8,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
            child: TabBar(
              onTap: onTap,
              padding: EdgeInsets.symmetric(horizontal: 20),
              unselectedLabelStyle:
                  Theme.of(context).primaryTextTheme.subtitle1,
              unselectedLabelColor: Colors.grey,
              labelStyle: Theme.of(context).primaryTextTheme.subtitle1,
              labelColor: Theme.of(context).colorScheme.primary,
              labelPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20,
              ),
              indicatorColor: Theme.of(context).colorScheme.primary,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
              isScrollable: true,
              tabs: tabs,
            ),
          ),
        ),
      ],
    );
  }
}

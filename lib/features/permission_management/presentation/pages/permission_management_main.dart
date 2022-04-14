import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_web_app/core/presentation/pages/scaling.dart';

class PermissionManagementMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body: Center(
          child: Text(
        'LockerAndEquipmentMainPage',
        style: TextStyle(color: Colors.blue),
      )),
      //ครอป Defaultcontroller
      // body: Column(
      //   children: [
      //     Container(
      //       height: 72,
      //       child: Row(
      //         children: [
      //           Container(
      //             margin: EdgeInsets.fromLTRB(38.4, 20, 20, 20),
      //             padding: EdgeInsets.all(scaling(8)),
      //             decoration: BoxDecoration(
      //               color: Theme.of(context).colorScheme.primary,
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //             child: SvgPicture.asset(
      //               'assets/icons/core/svg/people_icon_small.svg',
      //               color: Colors.white,
      //               height: 20,
      //             ),
      //           ),
      //           Text(
      //             'การจัดการสิทธิ์',
      //             // textHeightBehavior: ,
      //             style: Theme.of(context).primaryTextTheme.headline1!.copyWith(
      //                   color: Theme.of(context).colorScheme.primary,
      //                 ),
      //           )
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         margin: EdgeInsets.fromLTRB(38.4, 0.0, 38.4, 38.4),
      //         width: 1228.8,
      //         padding: EdgeInsets.symmetric(horizontal: 38.4),
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //           borderRadius: BorderRadius.circular(8),
      //         ),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             // Container(
      //             //   child: TabBar(
      //             //       // controller: _tabController,
      //             //       tabs: [
      //             //         Tab(text: 'สมาชิกทั้งหมด'),
      //             //         Tab(text: 'อนุมัติผู้ใช้งาน'),
      //             //         Tab(text: 'การบล็อกผู้ใช้งาน'),
      //             //         Tab(text: 'จัดการแผนก'),
      //             //       ]),
      //             // ),
      //             // Container(
      //             //   width: double.maxFinite,
      //             //   height: 300,
      //             //   child: TabBarView(
      //             //       // controller: _tabController,
      //             //       children: [
      //             //         Text('สมาชิกทั้งหมด'),
      //             //         Text('อนุมัติผู้ใช้งาน'),
      //             //         Text('การบล็อกผู้ใช้งาน'),
      //             //         Text('จัดการแผนก'),
      //             //       ]),
      //             // ),
      //             Text('TabBar'),
      //             Text('สมาชิกทั้งหมด 232 คน'),
      //             Text('ค้นหา'),
      //             Text('ตาราง'),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

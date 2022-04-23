import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/core/presentation/widgets/outline_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/features/locker_and_equipment/presentation/pages/locker_and_equipment_main.dart';
import 'package:frontend_web_app/features/locker_and_equipment/presentation/widgets/title_left_dropdown_field.dart';
import 'package:frontend_web_app/features/locker_and_equipment/presentation/widgets/title_left_text_field.dart';

import '../../../../core/presentation/widgets/app_bar_widget.dart';

class AddLockerFormPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final builingDropdown = useState<String?>(null);
    final floorDropdown = useState<String?>(null);
    final roomDropdown = useState<String?>(null);
    final departmentDropdown = useState<String?>(null);
    final accountDropdown = useState<String?>(null);

    return Scaffold(
      appBar: AppBarWidget(
        path: ['ตู้และอุปกรณ์', 'เพิ่มตู้ล็อกเกอร์'],
        onPressed: [
          () {
            AutoRouter.of(context).push(HomeRoute());
          },
          () {
            AutoRouter.of(context).pop();
          }
        ],
        currentPath: 'กรอกข้อมูลตู้ล็อกเกอร์',
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(364.8, 24, 364.8, 38.4),
          // padding: EdgeInsets.symmetric(horizontal: 38.4, vertical: 24),
          decoration: BoxDecoration(
            // color: Colors.amber,
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 38.4, vertical: 16),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colors.grey.shade300))),
                  child: Row(
                    children: [
                      Text('Locker ID :    ',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText1!
                              .copyWith(color: Colors.grey.shade500)),
                      Text('1',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText1!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                    ],
                  )),
              SizedBox(height: 38.4),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 57.6),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Colors.grey.shade300))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ข้อมูลทั่วไป',
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                    TitleLeftTextField(
                        title: ['ชื่อตู้ล็อกเกอร์', 'คำอธิบาย'],
                        hint: ['กรอกชื่อตู้ล็อกเกอร์', 'กรอกคำอธิบาย']),
                    SizedBox(height: 25.6),
                  ],
                ),
              ),
              SizedBox(height: 38.4),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 57.6),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Colors.grey.shade300))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'สถานที่ตั้ง',
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                    TitleLeftDropdownField(title: [
                      'อาคาร',
                      'ชั้น',
                      'ห้อง'
                    ], hint: [
                      'เลือกอาคาร',
                      'เลือกชั้น',
                      'เลือกห้อง'
                    ], value: [
                      builingDropdown.value,
                      floorDropdown.value,
                      roomDropdown.value,
                    ], items: [
                      ['ECC Building'],
                      ['5'],
                      ['503']
                    ], onChanged: [
                      (newValue) {
                        builingDropdown.value = newValue;
                      },
                      (newValue) {
                        floorDropdown.value = newValue;
                      },
                      (newValue) {
                        roomDropdown.value = newValue;
                      },
                    ]),
                    SizedBox(height: 25.6),
                  ],
                ),
              ),
              SizedBox(height: 38.4),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 57.6),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Colors.grey.shade300))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'จัดการสิทธิการใช้งาน',
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                    TitleLeftDropdownField(title: [
                      'แผนก',
                      'บัญชีผู้ใช้ (ถ้ามี)',
                    ], hint: [
                      'เลือกแผนก',
                      'เลือกบัญชีผู้ใช้งาน',
                    ], value: [
                      departmentDropdown.value,
                      accountDropdown.value,
                    ], items: [
                      [
                        'ESL Lab',
                        'Hardware Lab',
                        'HCL Lab',
                        'ISAC Lab',
                        'Network Lab'
                      ],
                      [],
                    ], onChanged: [
                      (newValue) {
                        departmentDropdown.value = newValue;
                      },
                      (newValue) {
                        accountDropdown.value = newValue;
                      },
                    ]),
                    SizedBox(height: 25.6),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 57.6, vertical: 38.4),
                child: Row(
                  children: [
                    Expanded(flex: 21, child: SizedBox()),
                    Expanded(
                      flex: 5,
                      child: OutlineButtonWidget(
                        text: 'ยกเลิก',
                        margin: EdgeInsets.zero,
                      ),
                    ),
                    Expanded(
                        flex: 10,
                        child: PrimaryButtonWidget(
                          onPressed: () {
                            AutoRouter.of(context).push(HomeRoute());
                          },
                          text: 'บันทึก',
                          margin: EdgeInsets.only(left: 20),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/core/presentation/widgets/outline_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/building.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/floor.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/department-repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/locker-repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/widgets/title_left_dropdown_field.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/widgets/title_left_text_field.dart';
import 'package:frontend_web_app/injection.dart';

import '../../../../core/presentation/widgets/app_bar_widget.dart';

class AddLockerFormPage extends HookWidget {
  final int id;
  const AddLockerFormPage({required this.id});
  @override
  Widget build(BuildContext context) {
    final name = useState('');
    final description = useState('');
    final buildings = useState(<Building>[]);
    final buildingSelected = useState<String?>(null);
    final floorSelected = useState<String?>(null);
    final roomSelected = useState<String?>(null);
    final departments = useState(<Department>[]);
    final departmentSelected = useState<String?>(null);

    final ValueNotifier<RestFailure?> restFailure = useState(null);
    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            final departmentResult =
                await getIt<DepartmentRepository>().getAll();

            departmentResult.fold(
              (l) => restFailure.value = l,
              (r) => departments.value = r,
            );
          } catch (error) {
            print('error departmentResult : $error');
          }
          try {
            final locationResult =
                await getIt<LockerRepository>().getBuildings();
            locationResult.fold(
              (l) => restFailure.value = l,
              (r) => buildings.value = r,
            );
          } catch (error) {
            print('error locationResult : $error');
          }
        });
        return null;
      },
      [],
    );

    return Scaffold(
      appBar: AppBarWidget(
        path: ['ตู้และอุปกรณ์', 'เพิ่มตู้ล็อกเกอร์'],
        onPressed: [
          () {
            AutoRouter.of(context).navigate(HomeRoute(
                children: [ManageLockerAndEquipmentMainRoute()],
                currentTab: 1));
          },
          () {
            AutoRouter.of(context).navigate(AddLockerRoute());
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
                      Text(id.toString(),
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
                      hint: ['กรอกชื่อตู้ล็อกเกอร์', 'กรอกคำอธิบาย'],
                      onChanged: [
                        (value) {
                          name.value = value;
                        },
                        (value) {
                          description.value = value;
                        }
                      ],
                    ),
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
                      buildingSelected.value,
                      floorSelected.value,
                      roomSelected.value,
                    ], items: [
                      [
                        ...buildings.value
                            .map((e) => e.id.toString() + ':' + e.name)
                      ],
                      if (buildingSelected.value != null)
                        buildings.value
                            .firstWhere((element) =>
                                element.id ==
                                int.parse(
                                    buildingSelected.value!.split(':')[0]))
                            .floors
                            .map((e) => e.id.toString() + ':' + e.name)
                            .toList()
                      else
                        <String>[],
                      if (buildingSelected.value != null &&
                          floorSelected.value != null)
                        buildings.value
                            .firstWhere((element) =>
                                element.id ==
                                int.parse(
                                    buildingSelected.value!.split(':')[0]))
                            .floors
                            .firstWhere((element) =>
                                element.id ==
                                int.parse(floorSelected.value!.split(':')[0]))
                            .rooms
                            .map((e) => e.id.toString() + ':' + e.name)
                            .toList()
                      else
                        <String>[],
                    ], onChanged: [
                      (newValue) {
                        buildingSelected.value = newValue;
                      },
                      (newValue) {
                        floorSelected.value = newValue;
                      },
                      (newValue) {
                        roomSelected.value = newValue;
                        print(roomSelected.value);
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
                    ], hint: [
                      'เลือกแผนก',
                    ], value: [
                      departmentSelected.value,
                    ], items: [
                      [
                        ...departments.value
                            .map((e) => e.id.toString() + ':' + e.name)
                      ],
                    ], onChanged: [
                      (newValue) {
                        departmentSelected.value = newValue;
                        print(departmentSelected.value);
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
                        onPressed: () {
                          AutoRouter.of(context).navigate(HomeRoute(
                              children: [ManageLockerAndEquipmentMainRoute()],
                              currentTab: 1));
                        },
                      ),
                    ),
                    Expanded(
                        flex: 10,
                        child: PrimaryButtonWidget(
                          onPressed: () async {
                            final result =
                                await getIt<LockerRepository>().registerLocker(
                              id: id,
                              name: name.value,
                              description: description.value,
                              departments: departments.value.firstWhere(
                                  (element) =>
                                      element.id ==
                                      int.parse(departmentSelected.value!
                                          .split(':')[0])),
                              room: buildings.value
                                  .firstWhere((element) =>
                                      element.id ==
                                      int.parse(buildingSelected.value!
                                          .split(':')[0]))
                                  .floors
                                  .firstWhere((element) =>
                                      element.id ==
                                      int.parse(
                                          floorSelected.value!.split(':')[0]))
                                  .rooms
                                  .firstWhere((element) =>
                                      element.id ==
                                      int.parse(
                                          roomSelected.value!.split(':')[0])),
                            );
                            result.fold(
                                (l) => null,
                                (r) => AutoRouter.of(context).push(HomeRoute(
                                        currentTab: 1,
                                        children: [
                                          ManageLockerAndEquipmentMainRoute()
                                        ])));
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

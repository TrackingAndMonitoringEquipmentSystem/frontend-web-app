import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/core/presentation/widgets/app_bar_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/locker-repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/add_locker_form.dart';
import 'package:frontend_web_app/injection.dart';

class AddLockerPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final unregisterLockers = useState(<int>[]);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);
    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            isLoading.value = true;
            final result = await getIt<LockerRepository>().getUnregister();
            isLoading.value = false;
            print('result: $result');
            result.fold(
              (l) => restFailure.value = l,
              (r) => unregisterLockers.value = r,
            );
          } catch (error) {
            print('error: $error');
          }
        });
        return null;
      },
      [],
    );

    return Scaffold(
      appBar: AppBarWidget(
        path: ['ตู้และอุปกรณ์'],
        onPressed: [
          () {
            AutoRouter.of(context).navigate(HomeRoute(
                children: [ManageLockerAndEquipmentMainRoute()],
                currentTab: 1));
          }
        ],
        currentPath: 'เพิ่มตู้ล็อกเกอร์',
      ),
      body: Container(
          margin: EdgeInsets.fromLTRB(364.8, 24, 364.8, 38.4),
          padding: EdgeInsets.symmetric(horizontal: 38.4, vertical: 24),
          decoration: BoxDecoration(
            // color: Colors.amber,
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ตู้ล็อกเกอร์ ${unregisterLockers.value.length} รายการ',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              SizedBox(height: 40),
              SearchBoxWidget(
                hintText: 'Locker ID',
                margin: EdgeInsets.only(right: 400),
              ),
              SizedBox(height: 40),
              if (isLoading.value)
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: SpinKitThreeBounce(
                      color: Theme.of(context).colorScheme.primary,
                      size: 16,
                    ),
                  ),
                )
              else
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.grey.shade300))),
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 24),
                              child: Text(
                                'Locker ID',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.grey.shade500),
                              ))
                        ]),
                    ...(unregisterLockers.value.map((e) {
                      return TableRow(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 24),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/core/svg/locker_color_icon_small.svg',
                                    height: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            alignment: Alignment.centerLeft,
                                            primary: Colors.black),
                                        onPressed: () {
                                          AutoRouter.of(context)
                                              .push(AddLockerFormRoute(id: e));
                                        },
                                        child: Text(
                                          e.toString(),
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ]);
                    }))
                  ],
                )
            ],
          )),
    );
  }
}

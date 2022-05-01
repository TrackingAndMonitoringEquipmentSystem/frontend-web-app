import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/features/permission_management/presentation/widgets/drag_target_widget.dart';

class AddUserByCsvPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 307.2,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(8))),
            padding: EdgeInsets.symmetric(horizontal: 38.4),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  Text(
                    'แบบฟอร์มพื้นฐาน',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'คุณสามารถใช้แบบฟอร์มพื้นฐานในการกรอกข้อมูลที่จำเป็นสำหรับการอัปโหลดข้อมูลของผู้ใช้งานใหม่',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText2!
                        .copyWith(color: Colors.grey.shade400),
                  ),
                  SizedBox(height: 24),
                  PrimaryButtonWidget(
                    onPressed: () {},
                    text: 'ดาวน์โหลดแบบฟอร์ม',
                    colorButton: Theme.of(context).colorScheme.secondary,
                    colorText: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width - 307.2,
              margin: EdgeInsets.symmetric(vertical: 19.4),
              padding: EdgeInsets.symmetric(vertical: 19.4, horizontal: 38.4),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'อัปโหลดแบบฟอร์มพื้นฐาน',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  SizedBox(height: 20),
                  DragTragetWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

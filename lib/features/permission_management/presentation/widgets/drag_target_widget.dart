import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/presentation/widgets/primary_button_widget.dart';

class DragTragetWidget extends HookWidget {
  final _list = useState<List<XFile>>([]);
  final offset = useState<Offset?>(null);
  final _dragging = useState<bool>(false);

  @override
  Widget build(BuildContext context) {
    return DropTarget(
      onDragDone: (detail) async {
        _list.value.addAll(detail.files);
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('อัปโหลดไฟล์สำเร็จ'),
            content: Row(
              children: [
                Icon(Icons.description, color: Colors.blue),
                Text(
                  _list.value.map((e) => e.name).join("\n"),
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'ปิด'),
                child: const Text('ปิด'),
              ),
            ],
          ),
        );
      },
      onDragUpdated: (details) {
        offset.value = details.localPosition;
      },
      onDragEntered: (detail) {
        _dragging.value = true;
        offset.value = detail.localPosition;
      },
      onDragExited: (detail) {
        _dragging.value = false;
        offset.value = null;
      },
      child: Container(
        decoration: BoxDecoration(
            color: _dragging.value
                ? Colors.blue.withOpacity(0.4)
                : Color.fromRGBO(248, 247, 252, 1),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Stack(
          children: [
            // if (_list.value.isEmpty)
            Center(
                child: Column(
              children: [
                SizedBox(height: 44.8),
                Icon(Icons.upload_file, size: 80, color: Colors.grey.shade300),
                SizedBox(height: 32),
                Text(
                  'เลือกไฟล์หรือลากไฟล์ของคุณที่นี่',
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
                SizedBox(height: 8),
                Text(
                  'ขนาดไฟล์ที่ใหญ่ที่สุด 10.0 MB และต้องเป็นไฟล์แบบ .csv',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText2!
                      .copyWith(color: Colors.grey.shade400),
                ),
                SizedBox(height: 32),
                PrimaryButtonWidget(onPressed: () {}, text: 'เลือกไฟล์ CSV'),
                SizedBox(height: 44.8),
              ],
            ))
            // else
            //   Center(
            //       child: Column(
            //     children: [
            //       SizedBox(height: 80),
            //       Icon(Icons.description, size: 80, color: Colors.blue),
            //       SizedBox(height: 32),
            //       Text(
            //         'อัปโหลดไฟล์สำเร็จ',
            //         style: Theme.of(context)
            //             .primaryTextTheme
            //             .subtitle1!
            //             .copyWith(color: Colors.blue),
            //       ),
            //       SizedBox(height: 8),
            //       Text(
            //         _list.value.map((e) => e.path).join("\n"),
            //         style: Theme.of(context)
            //             .primaryTextTheme
            //             .bodyText2!
            //             .copyWith(color: Colors.grey.shade400),
            //       ),
            //       SizedBox(height: 80),
            //     ],
            //   )),

            // Center(
            //     child: Column(
            //   children: [
            //     SizedBox(height: 44.8),
            //     Icon(Icons.task, size: 80, color: Colors.blue.withOpacity(0.4)),
            //     SizedBox(height: 32),
            //     Text(
            //       _list.value.map((e) => e.path).join("\n"),
            //       style: Theme.of(context)
            //           .primaryTextTheme
            //           .bodyText2!
            //           .copyWith(color: Colors.blue.withOpacity(0.4)),
            //     ),
            //     SizedBox(height: 90),
            //   ],
            // )),
            // Text(_list.value.map((e) => e.path).join("\n")),
            // if (offset.value != null)

            //   Align(
            //     alignment: Alignment.topRight,
            //     child: Text(
            //       '$offset',
            //       style: Theme.of(context).textTheme.caption,
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}

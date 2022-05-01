import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:frontend_web_app/core/utils/environment.dart' as environment;
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/injection.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';

class DragTragetWidget extends HookWidget {
  Future<bool> uploadFile(
    String filePath,
  ) async {
    // String url = SERVERURL + "/uploadRoute";
    var file = PickedFile(filePath);
    var uri = Uri(
      scheme: environment.baseSchema,
      host: environment.baseApiUrl,
      port: environment.baseApiPort,
      path: environment.user[environment.UserPath.addUserByCsv],
    );
    var stream = new http.ByteStream(DelegatingStream.typed(file.openRead()));
    int length = file.hashCode;
    final _authenticationRepository = getIt<AuthenticationRepository>();
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    var request = new http.MultipartRequest(
      "POST",
      uri,
    );
    request.headers['authorization'] = 'Bearer $token';

    var multipartFile = http.MultipartFile('file', stream, length,
        filename: basename(file.path), contentType: MediaType('text', 'csv'));
    // var multipartFile = new http.MultipartFile.fromBytes(
    //     'file', await File(file.path).readAsBytes(),
    //     contentType: new MediaType('text', 'csv'));

    request.files.add(multipartFile);
    var response = await request.send();
    print('response : ${response.statusCode}');

    response.stream.transform(utf8.decoder).listen((value) {
      print(value);
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final file = useState<XFile?>(null);
    final offset = useState<Offset?>(null);
    final _dragging = useState<bool>(false);
    final size = MediaQuery.of(context).size;

    return DropTarget(
      onDragDone: (value) async {
        file.value = value.files.first;
        uploadFile(
          file.value!.path,
        );

        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('อัปโหลดไฟล์สำเร็จ'),
            content: Row(
              children: [
                Icon(Icons.description, color: Colors.blue),
                Text(
                  file.value!.name,
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
        height: size.height * (330 / size.height),
        decoration: BoxDecoration(
            color: _dragging.value
                ? Colors.blue.withOpacity(0.4)
                : Color.fromRGBO(248, 247, 252, 1),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Stack(
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.upload_file, size: 80, color: Colors.grey.shade300),
                SizedBox(height: 24),
                Text(
                  'ลากไฟล์ของคุณที่นี่',
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
                SizedBox(height: 16),
                Text(
                  'ขนาดไฟล์ที่ใหญ่ที่สุด 10.0 MB และต้องเป็นไฟล์แบบ .csv',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText2!
                      .copyWith(color: Colors.grey.shade400),
                ),
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

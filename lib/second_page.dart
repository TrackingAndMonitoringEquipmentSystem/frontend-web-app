import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SecondPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Text('data');
      },
    ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final count = useState(12);
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Detain"),
        backgroundColor: Color.fromRGBO(172, 133, 255, 1),
      ),
      body: Center(
          child: Container(
        width: 700,
        height: 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(19, 188, 241, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name :'),
                SizedBox(
                  width: 247,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(bottom: 44),
                child: Text('Age : ${count.value.toString()}')),
            ElevatedButton(
                onPressed: () {
                  count.value++;
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(144, 237, 121, 1)),
                child: Text("Add Age")),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text('Go to secondPage'),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:exercise_app/logout.dart';
import 'package:flutter/material.dart';
import 'logout.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  static const String _title = 'Profile Page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage('assets/image.jpg'),
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(child: const Center(
                    child: Text('BUKK HL')
                    )
                    ),
                  Container(
                      alignment: Alignment.bottomLeft,
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(70, 5, 70, 5),
                      child: ElevatedButton(
                        child: const Text('Logout'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Logout()));
                        },
                      )),
                ])
          ],
        ));
  }
}

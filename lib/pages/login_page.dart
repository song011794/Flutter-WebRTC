import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final roomIdNotifier = ValueNotifier('');
  final nickNameNotifier = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: roomIdNotifier,
              builder: (context, value, child) => TextField(
                  onChanged: (value) => roomIdNotifier.value = value,
                  maxLength: 8,
                  decoration: const InputDecoration(
                    labelText: '채팅방',
                    hintText: '채팅방을 입력해주세요.',
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.remove_from_queue),
                    ),
                  )),
            ),
            ValueListenableBuilder(
              valueListenable: nickNameNotifier,
              builder: (context, value, child) => TextField(
                  onChanged: (value) => nickNameNotifier.value = value,
                  maxLength: 8,
                  decoration: const InputDecoration(
                    labelText: '닉네임',
                    hintText: '닉네임을 입력해주세요.',
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.person),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text('채팅방 접속'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

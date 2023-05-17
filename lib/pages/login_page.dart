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
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
              child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Spacer(),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'lib/images/video_chat.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ValueListenableBuilder(
                    valueListenable: roomIdNotifier,
                    builder: (context, value, child) => TextField(
                        onChanged: (value) => roomIdNotifier.value = value,
                        maxLength: 8,
                        decoration: const InputDecoration(
                          label: Text(
                            'Chat room',
                            style: TextStyle(color: Colors.grey),
                          ),
                          hintText: 'Please enter the chat room',
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Icon(Icons.remove_from_queue),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ValueListenableBuilder(
                    valueListenable: nickNameNotifier,
                    builder: (context, value, child) => TextField(
                        onChanged: (value) => nickNameNotifier.value = value,
                        maxLength: 8,
                        decoration: const InputDecoration(
                          label: Text(
                            'Nickname',
                            style: TextStyle(color: Colors.grey),
                          ),
                          hintText: 'Please enter the nickname',
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
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
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.pink.shade300,
                                  Colors.pink.shade400,
                                  Colors.pink.shade500,
                                  Colors.pink.shade600
                                ]),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: FilledButton(
                              onPressed: () => {},
                              style: FilledButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: const Text('Chat room entry'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Spacer(),
                ],
              ),
            ),
          )),
        ),
      ),
      bottomNavigationBar: const SizedBox(
        height: 70,
        child: Center(
          child: Text(
            'Enjoy one-on-one video chat',
            style: TextStyle(
                fontSize: 11, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

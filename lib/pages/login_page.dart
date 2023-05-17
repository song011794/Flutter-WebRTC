import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webrtc/bloc/login/login_cubit.dart';
import 'package:webrtc/pages/web_rtc_page.dart';

import '../bloc/chat/chat_bloc.dart';
import '../bloc/socket/socket_bloc.dart';
import '../bloc/web_rtc/web_rtc_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _roomIdNotifier = ValueNotifier('');
  final _nickNameNotifier = ValueNotifier('');

  late final LoginCubit _loginCubit;

  @override
  void initState() {
    _loginCubit = LoginCubit();
    super.initState();
  }

  void _showToast(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  valueListenable: _roomIdNotifier,
                  builder: (context, value, child) => TextField(
                      onChanged: (value) => _roomIdNotifier.value = value,
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
                  valueListenable: _nickNameNotifier,
                  builder: (context, value, child) => TextField(
                      onChanged: (value) => _nickNameNotifier.value = value,
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
                          child: BlocListener<LoginCubit, LoginState>(
                            bloc: _loginCubit,
                            listener: (context, state) {
                              state.whenOrNull(
                                  success: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MultiBlocProvider(
                                                      providers: [
                                                        BlocProvider<
                                                                WebRTCBloc>(
                                                            create: (context) =>
                                                                WebRTCBloc(
                                                                    context.read<
                                                                        SocketBloc>())),
                                                        BlocProvider<ChatBloc>(
                                                          create: (BuildContext
                                                                  context) =>
                                                              ChatBloc(context.read<
                                                                  SocketBloc>()),
                                                        ),
                                                      ],
                                                      child: WebRTCPage(
                                                          roomId:
                                                              _roomIdNotifier
                                                                  .value,
                                                          nickName:
                                                              _nickNameNotifier
                                                                  .value),
                                                    )))
                                      },
                                  failEmpty: () => _showToast(
                                      "Please enter your chat room and nickname"),
                                  failRoomEmpty: () =>
                                      _showToast("Please enter your chat room"),
                                  failNickNameEmpty: () =>
                                      _showToast("Please enter your nickname"));
                            },
                            child: FilledButton(
                              onPressed: () => _loginCubit.onEnterChatRoom(
                                  _roomIdNotifier.value,
                                  _nickNameNotifier.value),
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
                        ),
                      )
                    ],
                  ),
                ),
              ],
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

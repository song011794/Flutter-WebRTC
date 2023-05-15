import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:webrtc/web_rtc_page.dart';

import 'bloc/chat/chat_bloc.dart';
import 'bloc/socket/socket_bloc.dart';
import 'bloc/web_rtc/web_rtc_bloc.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  await dotenv.load(fileName: ".env");
  runApp(MultiBlocProvider(providers: [
    BlocProvider<SocketBloc>(
      lazy: false,
      create: (BuildContext context) => SocketBloc(),
    ),
    BlocProvider<WebRTCBloc>(
      create: (BuildContext context) => WebRTCBloc(context.read<SocketBloc>()),
    ),
    BlocProvider<ChatBloc>(
      create: (BuildContext context) => ChatBloc(context.read<SocketBloc>()),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _room = ValueNotifier<String>('');
  final _nickName = ValueNotifier<String>('');

  void _incrementCounter() {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => WebRTCPage()));

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => WebRTCPage2(
                  roomId: _room.value,
                  nickName: _nickName.value,
                )));
  }

  @override
  Widget build(BuildContext context) {
    // context.watch<SocketBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: _room,
              builder: (BuildContext context, value, Widget? child) =>
                  TextField(
                onChanged: (value) => _room.value = value,
                onSubmitted: (value) => _room.value = value,
                maxLength: 8,
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _nickName,
              builder: (BuildContext context, value, Widget? child) =>
                  TextField(
                onChanged: (value) => _nickName.value = value,
                onSubmitted: (value) => _nickName.value = value,
                maxLength: 8,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webrtc/bloc/chat/chat_bloc.dart';

import '../bloc/socket/socket_bloc.dart';

class Chat extends StatefulWidget {
  const Chat({required this.roomId, required this.nickName, Key? key})
      : super(key: key);

  final String roomId;
  final String nickName;

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  late final ChatBloc chatBloc;
  late final SocketBloc socektBloc;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    chatBloc = context.read<ChatBloc>();
    socektBloc = context.read<SocketBloc>();

    chatBloc.sendNickNmae(nickName: widget.nickName);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void toDownScroll() => WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      });

  Widget textCard(
          {required String nickName,
          required String text,
          required bool isReceive}) =>
      Row(
        mainAxisAlignment:
            isReceive ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (isReceive)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    nickName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
          Card(
            color: isReceive ? Colors.grey.shade300 : Colors.purple.shade200,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  textAlign: isReceive ? TextAlign.start : TextAlign.end,
                ),
              ),
            ]),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 3,
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: BlocListener<SocketBloc, SocketState>(
            bloc: socektBloc,
            listener: (contest, state) {
              state.whenOrNull(
                receiveMessage: (data) {
                  chatBloc.add(ChatEvent.onRecieve(data));
                  toDownScroll();
                },
              );
            },
            child: BlocBuilder<ChatBloc, ChatState>(
                bloc: chatBloc,
                builder: (context, chatState) {
                  return chatState.when(
                      initial: (data) => Container(),
                      reviceMessage: (data) {
                        print('reloadMessage : ${data}');
                        return ListView.builder(
                            controller: _scrollController,
                            itemCount: data.length,
                            itemBuilder: (context, index) => textCard(
                                nickName: data[index]['nickName'],
                                text: data[index]['payload'],
                                isReceive: data[index]['isReceive']));
                      },
                      sendMessage: (List<Map<String, dynamic>> data) {
                        print('sendMessage : ${data}');

                        return ListView.builder(
                            controller: _scrollController,
                            itemCount: data.length,
                            itemBuilder: (context, index) => textCard(
                                nickName: data[index]['nickName'],
                                text: data[index]['payload'],
                                isReceive: data[index]['isReceive']));
                      });
                }),
          ),
        ),
      ),
      Expanded(
          flex: 2,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    constraints: BoxConstraints(minHeight: 150),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: '메세지를 입력하세요.'),
                onFieldSubmitted: (value) {
                  chatBloc.sendMessage(
                      text: value,
                      roomId: widget.roomId,
                      nickName: widget.nickName);
                  toDownScroll();
                },
              ),
            ),
          ))
    ]);
  }
}

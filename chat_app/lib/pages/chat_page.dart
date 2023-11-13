import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/pages/cubits/chat_cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widegts/chat_buble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatelessWidget {
  // const ChatPage({Key? key}) : super(key: key);

  static String id = 'ChatPage';
  final _controller = ScrollController();

  // List<MessageModel> messagesList = [];


  // CollectionReference messages =
  //     FirebaseFirestore.instance.collection(kMessagesCollections);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments as String;
    // return StreamBuilder<QuerySnapshot>(
    //   stream: messages.orderBy(kCreatedAt, descending: true).snapshots(),
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData) {
    //       List<MessageModel> messagesList = [];
    //       for (int i = 0; i < snapshot.data!.docs.length; i++) {
    //         messagesList.add(MessageModel.fromJson(snapshot.data!.docs[i]));
    //       }
    // print(snapshot.data!.docs[0]['message']);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kLogo,
              height: 50,
            ),
            const Text('Chat')
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatCubit, ChatState>(
              // listener: (context, state) {
              //   if ( state is ChatSuccess){
              //     messagesList = state.messages;
              //   }
              // },
              builder: (context, state) {
                var messagesList = BlocProvider.of<ChatCubit>(context).messagesList;

                return ListView.builder(
                  reverse: true,
                  controller: _controller,
                  itemCount: messagesList.length,
                  itemBuilder: (context, index) {
                    return messagesList[index].id == email ? ChatBuble(
                      message: messagesList[index],
                    ) : ChatBubleForFriend(message: messagesList[index]);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: controller,
              onSubmitted: (data) {
                BlocProvider.of<ChatCubit>(context).sendMessage(message: data, email: email);

                // messages.add({
                //   kMessage: data,
                //   kCreatedAt: DateTime.now(),
                //   'id': email,
                // });

                controller.clear();
                _controller.animateTo(
                  0,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              },
              decoration: InputDecoration(
                hintText: 'Send Message',
                suffixIcon: const Icon(
                  Icons.send,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// else {
//   return const ModalProgressHUD(inAsyncCall: true, child: Scaffold(),);
//     // return const Text('Loading...');
// }
// },
// );
// }
// }

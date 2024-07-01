import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/test_data/test_chats.dart';
import 'package:mai_practice/components/test_data/test_user.dart';
import 'package:mai_practice/components/window_properies.dart';
import 'package:mai_practice/features/messager/models/chat_model.dart';
import 'package:mai_practice/features/messager/widgets/chat_box.dart';
import 'package:mai_practice/features/messager/widgets/chat_tile.dart';

class MessagerScreen extends StatefulWidget {
  const MessagerScreen({super.key});

  @override
  State<MessagerScreen> createState() => _MessagerScreenState();
}

class _MessagerScreenState extends State<MessagerScreen> {

  final _searchController = TextEditingController();
  bool searched = false;
  List<Chat>? searchedChats;

  late final List<Chat> _chats;

  Chat? selectedChat;

  @override
  void initState() {
    super.initState();
    _initChats();
  }

  _initChats() {
    setState(() {
      _chats = chats.where(
        (element) => element.members.contains(user)
      ).toList();
    });
  }

  void _onTileTap(Chat chat) {
    setState(() {
      if (selectedChat == chat) {
        selectedChat = null;
      } else {
        selectedChat = chat;
      }
    });
  }

  void _onSearch() {
    setState(() {
      if (searched) {
        searched = false;
        searchedChats = null;
        _searchController.clear();
      } else {
        searchedChats = _chats.where(
          (element) => element.members.firstWhere(
            (element) => element!=user
          ).getFio.toLowerCase().contains(
            _searchController.text.trim().toLowerCase()
          )
        ).toList();
        searched = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Expanded(
        child: Container(
          margin: const EdgeInsets.only(
            bottom: 30,
            right: 30
          ),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kDarkBlue,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.15,
                child: Column(
                  children: [
                    Container(
                      height: 53,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16
                      ),
                      decoration: BoxDecoration(
                        color: kBackground,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _searchController,
                              style: const TextStyle(fontSize: 16, color: kWhite),
                              decoration: const InputDecoration(
                                label: Text("Найти", style: TextStyle(fontSize: 16, color: kWhite),),
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: _onSearch,
                            child: Icon(!searched ? Icons.keyboard_arrow_down : Icons.close, color: kWhite, size: 20,)
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Expanded(
                      child: searchedChats == null 
                        ? ListView.builder(
                            itemCount: _chats.length,
                            itemBuilder: (context, index) {
                              final chat = _chats[index];
                              return GestureDetector(
                                onTap: () {
                                  _onTileTap(chat);
                                },
                                child: ChatTile(
                                  key: Key(index.toString()),
                                  chat: chat, 
                                  selected: selectedChat == chat
                                ),
                              );
                            },
                          ) 
                      : ListView.builder(
                          itemCount: searchedChats!.length,
                          itemBuilder: (context, index) {
                            final chat = searchedChats![index];
                            return GestureDetector(
                              onTap: () {
                                _onTileTap(chat);
                              },
                              child: ChatTile(
                                key: Key("${index}searched"),
                                chat: chat, 
                                selected: selectedChat == chat
                              ),
                            );
                          },
                        ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: kBackground
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: selectedChat == null 
                    ? const Center(
                        child: Text("Чат не выбран"),
                      ) 
                    : ChatBox(chat: selectedChat!)
                )
              )
            ],
          ),
        )
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveladminapp/model/chat.dart';

class ChatController extends GetxController {
  final messageController = TextEditingController();
  String? _chatID;
  ChatController(this._chatID);
  final _chatData = RxMap<String, Chat>({});

  Map<String, Chat> get chatData => _chatData;

  @override
  void onInit() {
    super.onInit();
    // _chatData.bindStream(database.getChatData(chatID: _chatID));
  }

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
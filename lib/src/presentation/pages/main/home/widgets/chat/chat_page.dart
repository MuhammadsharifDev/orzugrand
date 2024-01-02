import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_utils.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.blue,
        title: const Text('User'),
        centerTitle: true,
      ),
      body: const Column(
        children: [],
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: 16 + MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: SizedBox(
          height: 40.h,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey.withOpacity(0.2),
              filled: true,
              suffixIcon: const Icon(Icons.send),
              hintText: 'send message :)',
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: AppUtils.kBorderRadius16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

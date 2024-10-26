import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "NotificationScreen";
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: listView(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: const Text('Notifications'),
    );
  }

  Widget listView() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return listViewItem(index);
      },
      separatorBuilder: (context, index) {
        return const Divider(height: 0);
      },
      itemCount: 3, // changed to 3
    );
  }

  Widget listViewItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            prefixIcon(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    message(index),
                    timeAndDate(index),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: Icon(Icons.notifications, size: 25, color: Colors.grey.shade700,),
    );
  }

  Widget message(int index) {
    double textSize = 16;
    String messageText = '';

    switch (index) {
      case 0:
        messageText = 'Semester 3 result';
        break;
      case 1:
        messageText = 'New Message from Nilakshi Jain';
        break;
      case 2:
        messageText = 'Event Invitation for Pratishtha';
        break;
    }

    return RichText(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: messageText,
        style: TextStyle(
            fontSize: textSize,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
        children: const [
          TextSpan(
            text: '\nPlease review the attached files.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  Widget timeAndDate(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('03-04-2023',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          Text(
            '10:00 am',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
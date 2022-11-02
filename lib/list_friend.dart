import 'package:brain_hack/room_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'friend_item.dart';

class ListFriend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListFriend();
}

class _ListFriend extends State<ListFriend> {
  @override
  Widget build(BuildContext context) {
    //
    Widget rowTitle = Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/icon/head.png'), fit: BoxFit.contain)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 60,
            onPressed: () {},
            icon: const Image(
              image: AssetImage('images/icon/logo_v2.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 50),
            child: const Text(
              'PHÒNG ĐẤU',
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Fraunces',
                  color: Color(
                    0xFFFC5658,
                  ),
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 1,
                      color: Colors.white,
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
    //

    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Column(
        children: [
          rowTitle,
          Expanded(
              child: GridView.count(
            crossAxisCount: 1,
            childAspectRatio: 5,
            children: const <Widget>[
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
              FriendItem(),
            ],
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pop(context);
          },
          label: const Text(''),
          shape: const CircleBorder(side: BorderSide()),
          icon: const Icon(Icons.arrow_back_ios_new),
          backgroundColor: const Color(0xFF3B4DA3)),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

import 'package:brain_hack/room_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Rooms extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Rooms();
}

class _Rooms extends State<Rooms> {
  dynamic listRoom;
  int vt = 0;

  Future<void> loadQuestion() async {
    var a = FirebaseFirestore.instance.collection('Room');

    QuerySnapshot querySnapshot = await a.get();
    setState(() {});
    listRoom = querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  @override
  void initState() {
    super.initState();
    loadQuestion();
  }

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

    Widget selectSearch = ElevatedButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.2)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue, width: 2),
          ))),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.all(3),
        child: const Text(
          "Phòng",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
    Widget edtSearch = Container(
      padding: const EdgeInsets.only(left: 10),
      width: 200,
      height: 35,
      color: Colors.transparent,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            filled: true,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            fillColor: Colors.transparent,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
            )),
      ),
    );
    Widget btnSearch = Container(
        padding: const EdgeInsets.only(left: 10),
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFF7843E6),
              ),
            ),
            child: const Text("Search")));
    Widget title = Column(
      children: [
        rowTitle,
        SingleChildScrollView(
          child: Row(
            children: [selectSearch, edtSearch, btnSearch],
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Danh sách phòng đấu",
            style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                shadows: [
                  Shadow(
                    offset: Offset(2, 2),
                    blurRadius: 1,
                    color: Colors.purple,
                  )
                ]),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(3),
          color: Colors.white,
        ),
      ],
    );
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Column(
        children: [
          title,
          Expanded(
              child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: (2 / 3),
            children: <Widget>[
              if (listRoom != null)
                for (int i = 0; i < listRoom.length; i++)
                  RoomItem(
                    id: listRoom[i]['id'],
                    type: listRoom[i]['type'],
                    stt: listRoom[i]['stt'],
                  )
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

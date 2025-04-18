import 'package:flutter/material.dart';

class  Mygestures extends StatelessWidget {
  const Mygestures
      ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          title: Text("APP_02"),
          backgroundColor: Colors.redAccent,
          elevation: 4,
          actions:[
            IconButton(onPressed: () {
              print("b1");
            },
                icon: Icon(Icons.search)),
            IconButton(onPressed: () {
              print("b2");
            },
                icon: Icon(Icons.abc)),
            IconButton(onPressed: () {
              print("b3");
            },
                icon: Icon(Icons.more_vert)),
          ]
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            // GestureDetector - bắt được các sự kiện
            GestureDetector(
              onTap: () {
                print("Nội dung được tap!");
              },
              onDoubleTap: () {
                print("Nội dung được tap 2 cái!");
              },
              onPanUpdate: (details) {
                print("Kéo - di chuyển: ${details.delta}");
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text("Chạm vào tôi!")),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang Chu"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tim Kiem"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Ca Nhan"),
      ]),
    );
  }
}
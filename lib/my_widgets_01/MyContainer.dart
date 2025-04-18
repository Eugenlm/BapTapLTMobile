import "package:flutter/material.dart";

class MyContainer extends StatelessWidget{
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( ),

      body: Center(child: Container(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20),
              boxShadow:[
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: const Offset(0,4 ),
                )
              ] ),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),

          child: Align(
            alignment: Alignment.center,
            child: const Text(
              "Lam Quoc Bao",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              )
            ),
          )
        )
      )),

      floatingActionButton: FloatingActionButton(
        onPressed: (){print("Pressed");},
        child: const Icon(Icons.add_ic_call),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang Chủ"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm Kiếm"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá Nhân"),

      ]),
    );
  }
}
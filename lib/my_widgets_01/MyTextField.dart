import "package:flutter/material.dart";

class Mytextfield extends StatelessWidget{
  const Mytextfield({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("App_02"),
        backgroundColor: Colors.yellow,
        elevation: 4,
        actions: [
          IconButton(
              onPressed: (){print("b1");},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){print("b2");},
              icon: Icon(Icons.abc)
          ),
          IconButton(
              onPressed: (){print("b3");},
              icon: Icon(Icons.more_vert)
          ),
        ],

      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  hintText: "Nhập vào tên của bạn",
                  prefixIcon: Icon(Icons.person), // Icon cho họ và tên
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
              SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "abcxyz@gmail.com",
                  helperText: "Nhập vào email của bạn",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  filled: true,
                  fillColor: Colors.orange,
                ),
              ),
              SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  labelText: "SĐT",
                  hintText: "Nhập vào SĐT của bạn",
                  prefixIcon: Icon(Icons.phone), // Icon cho số điện thoại
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  labelText: "Ngày Sinh",
                  hintText: "Nhập vào ngày sinh của bạn",
                  prefixIcon: Icon(Icons.calendar_today), // Icon cho ngày sinh
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  hintText: "Nhập vào mật khẩu của bạn",
                  prefixIcon: Icon(Icons.lock), // Icon cho mật khẩu
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: "*",
              ),
              SizedBox(height: 30),

              TextField(
                onChanged: (value) {
                  print("Đang nhập: $value");
                },
                onSubmitted: (value) {
                  print("Đã hoàn thành");
                },
                decoration: InputDecoration(
                  labelText: "Câu hỏi bí mật",
                  hintText: "Nhập câu hỏi bí mật",
                  prefixIcon: Icon(Icons.help), // Icon cho câu hỏi bí mật
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
              ),
            ],
          ),
        ),
      ),


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
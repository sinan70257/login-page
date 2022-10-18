import 'package:flutter/material.dart';

import 'package:login_page1/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Chinchagram"),
          actions: [
            IconButton(
                onPressed: () {
                  SignOut(context);
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: ListView(
          children: [
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/images (1).jpg"),
              ),
              title: Text(
                "Abel",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sono"),
              ),
              subtitle: Text(
                "Heyy there",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            ListTile(
              leading: ClipRRect(
                child: Container(
                    height: 60,
                    // width: 50,
                    child: Image.asset('assets/images/images.jpg')),
              ),
              title: const Text(
                "Caprio",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Wassup bro !",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/download.jpg"),
              ),
              title: Text(
                "Kylie",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sono"),
              ),
              subtitle: Text(
                "Wanna hangout ?",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            ListTile(
              leading: Container(
                height: 70,
                child: ClipRRect(
                  child: Image.asset("assets/images/download (1).jpg"),
                ),
              ),
              title: const Text(
                "Travis",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "How doing ?",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/download (7).jpg"),
              ),
              title: Text(
                "Brad",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sono"),
              ),
              subtitle: Text(
                "Movie ?",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            ListTile(
              leading: ClipRRect(
                child: Container(
                    height: 60,
                    // width: 50,
                    child: Image.asset('assets/images/2.jpg')),
              ),
              title: const Text(
                "Zayn",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "Wassup bro !",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/3.jpg"),
              ),
              title: Text(
                "Salena",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sono"),
              ),
              subtitle: Text(
                "Wanna hangout ?",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            ListTile(
              leading: Container(
                height: 70,
                child: ClipRRect(
                  child: Image.asset("assets/images/4.jpg"),
                ),
              ),
              title: const Text(
                "Drake",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "How doing ?",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/5.jpg"),
              ),
              title: Text(
                "Billie",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sono"),
              ),
              subtitle: Text(
                "Movie ?",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/1.jpg"),
              ),
              title: Text(
                "Harry",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Heyy there",
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
            ),
          ],
        ));
  }

  SignOut(BuildContext ctx) async {
    final sharedpref = await SharedPreferences.getInstance();
    await sharedpref.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => LoginPage()), (route) => false);
  }
}

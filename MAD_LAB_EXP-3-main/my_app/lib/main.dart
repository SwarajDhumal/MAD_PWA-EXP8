import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
* Exp 3: Profile Page App (stateful)
* */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "Abhay Singh";
  String email = "...";
  String phone = "XXXXXXXX89";
  String address = "...";
  Icon visibilityIcon = const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Profile Page", style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/872383386?v=4"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Developer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Text("Dept.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("IT", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Text("Birthday", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("21 Sept", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Text("Age", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("21 yrs", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.grey[100],
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.black),
                    title: Text(email, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.grey[100],
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.phone, color: Colors.black),
                    title: Text(phone, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.grey[100],
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.home, color: Colors.black),
                    title: Text(address, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(()  {
            name = "Abhay Singh";
            if (email == "...") {
              email = "abhay@gmail.com";
            } else {
              email = "...";
            }
            if (phone == "XXXXXXXX46") {
              phone = "8928468146";
            } else {
              phone = "XXXXXXXX46";
            }
            if (address == "...") {
              address = "Mumbai, India";
            } else {
              address = "...";
            }
            if (visibilityIcon.icon == Icons.visibility) {
              visibilityIcon = const Icon(Icons.visibility_off);
            } else {
              visibilityIcon = const Icon(Icons.visibility);
            }
          });
        },
        tooltip: 'Update Profile',
        child: visibilityIcon,
      ),
    );
  }
}
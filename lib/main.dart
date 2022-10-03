import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

TextStyle titleStyle =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
Container skillItem(String text, Color c) {
  return Container(
    decoration:
        BoxDecoration(color: c, borderRadius: BorderRadius.circular(25)),
    margin: const EdgeInsets.all(8),
    alignment: Alignment.center,
    height: 25,
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Keith E. Bautista's Resume"),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Keith E. Bautista  ",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  const Text(
                    "Web Developer | Mobile Developer",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.email),
                      Text("keithcoph@gmail.com")
                    ],
                  ),
                  Row(
                    children: const [Icon(Icons.phone), Text("09677000639")],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "About me: ",
                    style: titleStyle,
                  ),
                  const Text("Always motivated, can work under pressure"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "",
                        style: titleStyle,
                      ),
                      const Text(""),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Education : ",
                        style: titleStyle,
                      ),
                      const Text("Bachelor of Science in Computer Science"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Projects : ",
                        style: titleStyle,
                      ),
                      const Text(
                          "Arduino Home Automation | Uploading Image Web"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Skills:",
                    style: titleStyle,
                  ),
                  skillItem("C++", Colors.purple),
                  skillItem("Java", Colors.cyan),
                  skillItem("Python", Colors.deepOrangeAccent),
                  skillItem("Javascript ", Colors.teal),
                  skillItem("PHP", Colors.pink),
                  skillItem("Flutter", Colors.brown)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

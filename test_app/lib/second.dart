import "package:flutter/material.dart";

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("seocnd screen get disposed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Test2"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}

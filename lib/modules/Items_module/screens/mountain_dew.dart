import 'package:flutter/material.dart';

class MountainDew extends StatefulWidget {
  const MountainDew({super.key});

  @override
  State<MountainDew> createState() => _MountainDewState();
}

class _MountainDewState extends State<MountainDew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
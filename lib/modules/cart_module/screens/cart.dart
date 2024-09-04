import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final List<Map<String, dynamic>> itemContent;

  CartScreen({Key? key, required this.itemContent}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:5, horizontal: 10),
            child: Column(
                  children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff003853),
                              ),
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                              Text('My Shopping List', style: TextStyle(color:Color(0xff003853), fontSize: 20),)
                        ],
                      ),
                     Text('...', style:TextStyle(color: Color((0xff003853)), fontSize: 30)),
                    ],
                   )
                  ],
                ),
          )),
    );
  }
}

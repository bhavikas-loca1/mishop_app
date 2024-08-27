// ignore_for_file: prefer_final_fields, non_constant_identifier_names

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mishop_app/modules/cart_module/screens/cart.dart';

// import 'package:flutter/src/rendering/box.dart';
class DharaOil extends StatefulWidget {
  const DharaOil({super.key});

  @override
  State<DharaOil> createState() => _DharaOilState();
}

class _DharaOilState extends State<DharaOil> {
  List<Map<String, dynamic>> itemContent = [
    {
      'image_1': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'category': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'new_cost': 'Rs 103 ',
      'old_cost': ' Rs 133 ',
      'ratings': '4.8',
      'reviews': '(230)',
      'quantity': '5L',
    }
  ];

  List<String> _comments = [];
  void _addComments(String val) {
    if (val.trim().isNotEmpty) {
      setState(() {
        _comments.add(val);
        _commentController.clear();
        print(_comments);
      });
    }
  }

  int index = 0;
  bool isFavorite = false;
  int selectedIndex = 0;
  final ReviewsKey = GlobalKey();
  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  TextEditingController _commentController = TextEditingController();



  Widget _buildCommentList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _comments.length,
      itemBuilder: (context, iNdex) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all
            ( 
              color: Color(0xffD5D5D5))
          ),
          child: _buildCommentItem(_comments[iNdex]));
      },
      
    );
  }

  Widget _buildCommentItem(String comment) {
    return ListTile(title: Text(comment));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 320,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Rectangle 70.png')),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    const SizedBox(
                      height: 320,
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        height: 320,
                        width: 170,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(itemContent[index]['image_1']),
                          fit: BoxFit.fitHeight,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 320,
                      width: 10,
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xffD5D5D5),
                            )),
                        child: IconButton(
                          iconSize: 15,
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: isFavorite
                                ? const Color(0xff39C7A5)
                                : const Color(0xffD5D5D5),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(
                    itemContent[index]['category'],
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xff39C7A5)),
                  ),
                  Text(
                    itemContent[index]['name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Color(0xffD5D5D5)),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              itemContent[index]['new_cost'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              itemContent[index]['old_cost'],
                              style: const TextStyle(
                                color: Color(0xff818082),
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            scrollToSection(ReviewsKey);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xffF8C50F),
                              ),
                              Text(
                                itemContent[index]['ratings'],
                                style:
                                    const TextStyle(color: Color(0xff101010)),
                              ),
                              Text(itemContent[index]['reviews'],
                                  style: const TextStyle(
                                      color: Color(0xff818082))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text('Pack/Size/Weight',
                        style:
                            TextStyle(color: Color(0xff818082), fontSize: 14)),
                  ),
                  Container(
                      height: 41,
                      width: 79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff00A489),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          itemContent[index]['quantity'],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        )),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text('Quantity',
                        style:
                            TextStyle(color: Color(0xff818082), fontSize: 14)),
                  ),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xffD5D5D5))),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 41.25,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: const Color(0xffE3E3E4),
                                  )),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (selectedIndex > 0) {
                                        selectedIndex--;
                                      }
                                    });
                                  },
                                  icon: const Icon(Icons.remove))),
                          Container(
                              height: 41.25,
                              width: 40,
                              child: Center(child: Text('${selectedIndex}'))),
                          Container(
                              height: 41.25,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: const Color(0xffE3E3E4),
                                  )),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                  ))),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text('Description',
                        style:
                            TextStyle(color: Color(0xff818082), fontSize: 12)),
                  ),
                  const Text(
                      'Dhara filtered groundnut oil has low absorb technology, Naturally balanced SFA, MUFA & PUFA. Fortified with vitamin A & Vitamin D2. Best Before 9 months from date of packaging when stored in a dry place and away from light and heat. It is most generally used when frying foods and extra preparations.')
                ],
              ),
            ),
            Column(children: [
              Row(
                key: ReviewsKey,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Ratings and Reviews',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff39C7A5))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        itemContent[index]['ratings'],
                        style: const TextStyle(fontSize: 30),
                      ),
                      const Text(
                        '/5',
                        style: TextStyle(fontSize: 30),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Overall Ratings',
                              style: TextStyle(fontSize: 15)),
                          Row(
                            children: [
                              Text(itemContent[index]['reviews'],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff818082),
                                  )),
                              const Text('Verified Reviews',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff818082),
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ]),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xff818082)
                    )
                  ),
                  child: TextFormField(
                  
                    controller: _commentController,
                    onFieldSubmitted: (newValue) {
                      print(newValue);
                      if (newValue.trim().isNotEmpty) {
                        _addComments(newValue);
                      }
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: "add your reviews",
                       focusedBorder: InputBorder.none,
                 enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                _buildCommentList()
              ],
            ),
          ]),
        ),
      ),

      bottomNavigationBar: navbar(),
    );
  }

  Widget navbar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,0,15,10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  CartScreen(),
              ));
        },
        child: Container(
            height: 60,
            
            decoration: BoxDecoration(
              color: const Color(0xff39C7A5),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                const Padding(padding: EdgeInsets.only(right: 5)),
                const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.only(right: 5)),
                if (selectedIndex > 0)
                  Builder(
                    builder: (context) {
                      return Text(
                        '($selectedIndex)',
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      );
                    },
                  )
              ],
            )),
      ),
    );
  }
}

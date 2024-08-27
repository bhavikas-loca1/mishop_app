import 'package:flutter/material.dart';
import 'package:mishop_app/modules/Items_module/screens/Dhara_oil.dart';
import 'package:mishop_app/modules/Items_module/screens/mountain_dew.dart';
import 'package:mishop_app/modules/category_module/screens/grocery_view_grid.dart';

class GroceryView2 extends StatefulWidget {
  const GroceryView2({super.key});

  @override
  State<GroceryView2> createState() => _GroceryView2State();
}

class _GroceryView2State extends State<GroceryView2> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> listMap = [
    {
      'images': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'category': 'grocery',
      'title': 'Dhara Groundnut Refined',
      'subtitle': 'Cooking Oil 5L',
      'old_cost': 'Rs 133 ',
      'new_cost': ' Rs 103',
      'ratings': '4.8',
      'reviews': '(230)',
      'isFavorite': 'false',
      'path': DharaOil(),
    },
    {
      'images': 'assets/images/40015868-9_2-mountain-dew-soft-drink 1.png',
      'title': 'Mountain Dew 1L Soft Drink',
      'category': 'grocery',
      'subtitle': 'Bottle',
      'old_cost': 'Rs 163 ',
      'new_cost': ' Rs 154',
      'ratings': '4.5',
      'reviews': '(123)',
      'isFavorite': 'false',
      'path': MountainDew(),
    },
    {
      'images': 'assets/images/61pPVRyfmgL 1.jpg',
      'title': 'Refined Iodized 1kg Salt ',
      'category': 'grocery',
      'subtitle': '',
      'old_cost': 'Rs 233 ',
      'new_cost': ' Rs 200',
      'ratings': '4.9',
      'reviews': '(123)',
      'isFavorite': 'false',
      'path': MountainDew(),
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Rectangle 96.png'))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff003853),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 50,
                      ),
                      Text(
                        'Search in ',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff003853)),
                      ),
                      Text(
                        'Grocery',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff39C7A5)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 54,
                        width: 300,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.search)),
                            counterText: '',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(131, 133, 133, 133),
                                  width: 2.0),
                            ),
                            hintText: 'search',
                          ),
                          controller: _controller,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 54,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffD5D5D5),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Container(
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/settings-sliders 1.png'),
                              fit: BoxFit.fill,
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 38,
                    width: 15,
                  ),
                  Text(listMap.length.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff101010),
                          fontSize: 14)),
                  Text(
                    ' Results',
                    style: TextStyle(color: Color(0xff818082), fontSize: 14),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffD5D5D5),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Vector (2).png'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Grocery(),
                          ));
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffD5D5D5),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/apps 1.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38,
                    width: 15,
                  ),
                ],
              )
            ],
          ),
          ListView.builder(
            itemCount: listMap.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final path = listMap[index]['path'];
                  if (path != -1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => path),
                    );
                  }
                },
                child: ListTile(
                    leading: Image.asset(listMap[index]['images']),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listMap[index]['category'],
                          style: TextStyle(
                            color: Color(0xff00A489),
                            fontSize: 12,
                          ),
                        ),
                        Text(listMap[index]['title'],
                            style: TextStyle(
                              fontSize: 14,
                            )),
                        Text(listMap[index]['subtitle'],
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              listMap[index]['old_cost'],
                              style: TextStyle(
                                color: Color(0xff818082),
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                              ),
                            ),
                            Text(listMap[index]['new_cost'],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffF8C50F),
                              size: 14,
                            ),
                            Text(
                              listMap[index]['ratings'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              listMap[index]['reviews'],
                              style: TextStyle(
                                color: Color(0xff818082),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xffD5D5D5)),
                      ),
                      child: IconButton(
                          iconSize: 15,
                          onPressed: () {
                            listMap[index]['isFavorite'] =! listMap[index]['isFavorite'];
                            setState(() {});
                          },
                          icon: listMap[index]['isFavorite']== true
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.green,
                                )
                              : Icon(
                                  Icons.favorite_border_outlined,
                                  color: Color(0xffD5D5D5),
                                )),
                    )),
              );
            },
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:mishop_app/modules/Items_module/screens/items_content.dart';
import 'package:mishop_app/modules/category_module/screens/category_view_list.dart';
import 'package:mishop_app/modules/category_module/screens/grocery_view_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> gridMap = [
    {
      'images': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'category': 'grocery',
      'title': 'Dhara Groundnut Refined',
      'subtitle': 'Cooking Oil 5L',
      'cost': 'Rs 133',
      'ratings': '4.8',
      'reviews': '(230)',
      'isFavorite': false,
    },
    {
      'images': 'assets/images/40015868-9_2-mountain-dew-soft-drink 1.png',
      'category': 'grocery',
      'title': 'Mountain Dew 1L Soft Drink',
      'subtitle': 'Bottle',
      'cost': 'Rs 163',
      'ratings': '4.5',
      'reviews': '(123)',
      'isFavorite': false,
    },
    {
      'images': 'assets/images/61pPVRyfmgL 1.jpg',
      'category': 'grocery',
      'title': 'Refined Iodized 1kg Salt ',
      'subtitle': '',
      'cost': 'Rs 233',
      'ratings': '4.9',
      'reviews': '(123)',
      'isFavorite': false,
    }
  ];

  List items = [
    'assets/images/ad.jpg',
    'assets/images/download 1.png',
  ];
    List<Map<String, dynamic>>categories = [
    {'name': 'Soft Drinks',
     'path': Grocery(),
    },
     {'name': 'Grocery',
     'path': Grocery(),
    },
     {'name': 'Cosmetics',
     'path': Grocery(),
    },
     {'name': 'Kitchen',
     'path': Grocery(),
    },
     {'name': 'Cleaning Items',
     'path': Grocery(),
    },
     {'name': 'Bath Items',
     'path': Grocery(),
    },
     {'name': 'Packed Items',
     'path': Grocery(),
    },
     {'name': 'Frozen Items',
     'path': Grocery(),
    },
    
  ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Container(
                                height: 30,
                                width: 26,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/address.png'),
                                  fit: BoxFit.fill,
                                ))),
                          ),
                          const SizedBox(
                            width: 10,
                            height: 10,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deliver at',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'F-19, Noida',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 26,
                        child: const Icon(
                          Icons.notifications_none_outlined,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(Icons.search)),
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(131, 133, 133, 133),
                              width: 2.0),
                        ),
                        hintText: 'Enter Anything, like a "tomato"',
                      ),
                      controller: _controller,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                        
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(items[index]),
                                    fit: BoxFit.fill,
                                  )),
                            ));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                        
                  SizedBox(
                    height: 70,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                           onTap: () {
                          final path = categories[index]['path'];
                          if (path != -1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => path),
                            );
                          }
                        },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 110,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffD5D5D5),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(child: Text(categories[index]['name'])),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                        
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Most Selling items',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        'see all',
                        style:
                            TextStyle(color: Color(0xFF39C7A5), fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 1 / 1.7),
                    shrinkWrap: true,
                    itemCount: gridMap.length,
                    itemBuilder: (context, index) {
          final gridMap = gridMap[index];

          if (gridMap == null) {
            return Text('No Product Available');
          }
                    
                     {
                      
                      return GestureDetector(
                        onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ItemsContent(item: gridMap)),
                            );
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffD5D5D5),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xffD5D5D5),
                                          )),
                                      child: IconButton(
                                          iconSize: 15,
                                          onPressed: () {
                                            gridMap['isFavorite'] =! gridMap['isFavorite'];
                                            setState(() {});
                                          },
                                          icon:  gridMap['isFavorite'] == true
                                              ? Icon(
                                                  Icons.favorite,
                                                  color: Colors.green,
                                                )
                                              : Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Color(0xffD5D5D5),
                                                )),
                                    )
                                  ],
                                ),
                                Image.asset(gridMap['images']),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(gridMap['category'],
                                        style: const TextStyle(
                                            fontSize: 10,
                                            color:
                                                Color(0xFF39C7A5))), //CATEGORY
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      gridMap['title'],
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      gridMap['subtitle'],
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        gridMap['cost'],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.star,
                                        color: Color(0xFFF8C50F)),
                                    Text(
                                      gridMap['ratings'],
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(gridMap['reviews'],
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.grey)),
                                  ],
                                )
                              ]),
                            ),
                          ),
                        ),
                      );
                    }},
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _navBar(),
            ),
          )
        ]),
      ),
    );
  }

  Widget _navBar() {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Color(0xff003853),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bottomNavItem(
            isSelected: selectedIndex == 0,
            icon: Icons.home_outlined,
            label: 'Home',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
          bottomNavItem(
            isSelected: selectedIndex == 1,
            icon: Icons.category_outlined,
            label: 'Category',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoryView1()));
            },
          ),
          bottomNavItem(
            isSelected: selectedIndex == 2,
            icon: Icons.shopping_cart_outlined,
            label: 'Cart',
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
          ),
          bottomNavItem(
            isSelected: selectedIndex == 3,
            icon: Icons.shopping_bag_outlined,
            label: 'Orders',
            onPressed: () {
              setState(() {
                selectedIndex = 3;
              });
            },
          ),
          bottomNavItem(
            isSelected: selectedIndex == 4,
            icon: Icons.person_outline,
            label: 'you',
            onPressed: () {
              setState(() {
                selectedIndex = 4;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget bottomNavItem(
      {required IconData icon,
      required String label,
      required bool isSelected,
      required Function() onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

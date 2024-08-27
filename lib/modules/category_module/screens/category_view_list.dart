import 'package:flutter/material.dart';
import 'package:mishop_app/modules/Items_module/screens/mountain_dew.dart';
import 'package:mishop_app/modules/category_module/screens/category_view_grid.dart';
import 'package:mishop_app/modules/category_module/screens/grocery_view_grid.dart';
import 'package:mishop_app/modules/home_module/screen/home_screen.dart';

class CategoryView1 extends StatefulWidget {
  const CategoryView1({super.key});

  @override
  State<CategoryView1> createState() => _CategoryView1State();
}

class _CategoryView1State extends State<CategoryView1> {
  final TextEditingController _controller = TextEditingController();
  int selectedIndex = 0;
  List<Map<String, dynamic>> categories = [
    {
      'name': 'Soft Drinks',
      'path': MountainDew(),
    },
    {
      'name': 'Grocery',
      'path': Grocery(),
    },
    {
      'name': 'Cosmetics',
      'path': MountainDew(),
    },
    {
      'name': 'Kitchen',
      'path': MountainDew(),
    },
    {
      'name': 'Cleaning Items',
      'path': MountainDew(),
    },
    {
      'name': 'Bath Items',
      'path': MountainDew(),
    },
    {
      'name': 'Packed Items',
      'path': MountainDew(),
    },
    {
      'name': 'Frozen Items',
      'path': MountainDew(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                      hintText: 'Enter Anything, like a "tomato"',
                    ),
                    controller: _controller,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryView2()));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xffD5D5D5),
                            ),
                             image: DecorationImage(
                            image: AssetImage('assets/images/apps 1.png'),
                          ),
                            ),
                      ),
                    )
                  ],
                ),
                ListView.builder(
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
                      child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Color(0xffD5D5D5),
                          ))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/box.png'),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Text(categories[index]['name']),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                              ),
                            ],
                          )),
                    );
                  },
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _navBar(),
          ),
        ]),
      ),
    );
  }

  Widget _navBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
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
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          bottomNavItem(
            isSelected: selectedIndex == 1,
            icon: Icons.category_outlined,
            label: 'Category',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryView1()));
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
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

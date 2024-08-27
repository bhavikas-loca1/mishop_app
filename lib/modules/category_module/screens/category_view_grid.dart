import 'package:flutter/material.dart';
import 'package:mishop_app/modules/Items_module/screens/mountain_dew.dart';
import 'package:mishop_app/modules/category_module/screens/category_view_list.dart';
import 'package:mishop_app/modules/category_module/screens/grocery_view_grid.dart';
import 'package:mishop_app/modules/home_module/screen/home_screen.dart';

class CategoryView2 extends StatefulWidget {
  const CategoryView2({super.key});

  @override
  State<CategoryView2> createState() => _CategoryView2State();
}

class _CategoryView2State extends State<CategoryView2> {
  final TextEditingController _controller = TextEditingController();
  int selectedIndex = 0;
  List<Map<String, dynamic>> categories = [
    {
      'name': 'Soft Drinks',
      'image': 'assets/images/soda 1.png',
      'path': MountainDew(),
    },
    {
      'name': 'Grocery',
      'path': Grocery(),
      'image': 'assets/images/grocery 1.png',
    },
    {
      'name': 'Cosmetics',
      'path': MountainDew(),
      'image': 'assets/images/skincare 1.png',
    },
    {
      'name': 'Kitchen',
      'image': 'assets/images/tea 1.png',
      'path': MountainDew(),
    },
    {
      'name': 'Cleaning Items',
      'image': 'assets/images/cleaning 1.png',
      'path': MountainDew(),
    },
    {
      'name': 'Bath Items',
      'image': 'assets/images/soap 1.png',
      'path': MountainDew(),
    },
    {
      'name': 'Packed Items',
      'image': 'assets/images/take-away 1.png',
      'path': MountainDew(),
    },
    {
      'name': 'Frozen Items',
      'image': 'assets/images/frozen-goods 1.png',
      'path': MountainDew(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SingleChildScrollView(
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
                                builder: (context) => CategoryView1()));
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
                            image: AssetImage('assets/images/list 1.png'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    childAspectRatio: 1 / 1.15,
                  ),
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
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffD5D5D5),
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 9),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                    image:
                                        AssetImage(categories[index]['image'])),
                                Text(categories[index]['name'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff003853),
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       width: 105,
                //       height: 120,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Color(0xffD5D5D5),
                //         ),
                //         borderRadius: BorderRadius.circular(5)
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 9),
                //         child: Center(
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Image(image: AssetImage('assets/images/soda 1.png')),
                //               Text('Soft Drinks', style: TextStyle(fontSize: 12, color: Color(0xff003853), fontWeight: FontWeight.bold)),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //      GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //            MaterialPageRoute(builder: (context) => Grocery()));
                //       },
                //        child: Container(
                //         width: 105,
                //         height: 120,
                //         decoration: BoxDecoration(
                //           border: Border.all(
                //             color: Color(0xffD5D5D5),
                //           ),
                //           borderRadius: BorderRadius.circular(5)
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
                //           child: Center(
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 Image(image: AssetImage('assets/images/grocery 1.png')),
                //                 Text('Grocery', style: TextStyle(fontSize: 12, color: Color(0xff003853), fontWeight: FontWeight.bold)),
                //               ],
                //             ),
                //           ),
                //         ),
                //                            ),
                //      ),
                //      Container(
                //       width: 105,
                //       height: 120,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Color(0xffD5D5D5),
                //         ),
                //         borderRadius: BorderRadius.circular(5),
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
                //         child: Center(
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Image(image: AssetImage('assets/images/skincare 1.png')),
                //               Text('Cosmetics', style: TextStyle(fontSize: 12, color: Color(0xff003853), fontWeight: FontWeight.bold)),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 13,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       width: 105,
                //       height: 120,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Color(0xffD5D5D5),
                //         ),
                //         borderRadius: BorderRadius.circular(5)
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
                //         child: Center(
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Image(image: AssetImage('assets/images/tea 1.png')),
                //               Text('Kitchen', style: TextStyle(fontSize: 12, color: Color(0xff003853), fontWeight: FontWeight.bold)),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //      Container(
                //       width: 105,
                //       height: 120,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Color(0xffD5D5D5),
                //         ),
                //         borderRadius: BorderRadius.circular(5)
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
                //         child: Center(
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Image(image: AssetImage('assets/images/cleaning 1.png')),
                //               Text('Cleaning Items', style: TextStyle(fontSize: 12, color: Color(0xff003853), fontWeight: FontWeight.bold)),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //      Container(
                //       width: 105,
                //       height: 120,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Color(0xffD5D5D5),
                //         ),
                //         borderRadius: BorderRadius.circular(5),
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
                //         child: Center(
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Image(image: AssetImage('assets/images/soap 1.png')),
                //               Text('Bath Items', style: TextStyle(fontSize: 12, color: Color(0xff003853), fontWeight: FontWeight.bold)),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 13,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       width: 105,
                //       height: 120,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Color(0xffD5D5D5),
                //         ),
                //         borderRadius: BorderRadius.circular(5)
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
                //         child: Center(
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Image(image: AssetImage('assets/images/take-away 1.png')),
                //               Text('Packed Foods', style: TextStyle(fontSize: 12, color: Color(0xff003853), fontWeight: FontWeight.bold)),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //      Container(
                //       width: 105,
                //       height: 120,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Color(0xffD5D5D5),
                //         ),
                //         borderRadius: BorderRadius.circular(5)
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
                //         child: Center(
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Image(image: AssetImage('assets/images/frozen-goods 1.png')),
                //               Text('Frozen Foods', style: TextStyle(fontSize: 12, color: Color(0xff003853), fontWeight: FontWeight.bold)),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //      Container(
                //       width: 105,
                //       height: 120,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: _navBar(),
        ),
      ],
    )));
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
                  MaterialPageRoute(builder: (context) => CategoryView2()));
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

import 'package:flutter/material.dart';
import 'package:mishop_app/modules/Items_module/screens/items_content.dart';
import 'package:mishop_app/modules/category_module/screens/grocery_view_list.dart';

class Grocery extends StatefulWidget {
  const Grocery({super.key});

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> gridMap =[
   {
    'images' : 'assets/images/134006_6-dhara-oil-groundnut 1.png',
    'category': 'grocery',
    'title': 'Dhara Groundnut Refined',
    'subtitle': 'Cooking Oil 5L',
    'cost' : 'Rs 133',
    'ratings' : '4.8',
    'reviews' : '(230)',
    'isFavorite': false,
    // 'path': ItemsContent(item: ), 
    
   },
   {
    'images': 'assets/images/40015868-9_2-mountain-dew-soft-drink 1.png',
    'category': 'grocery',
    'title': 'Mountain Dew 1L Soft Drink',
    'subtitle': 'Bottle',
    'cost': 'Rs 163',
    'ratings': '4.5',
    'reviews': '(123)',
    'isFavorite':false,
    // 'path': MountainDew(),
    
    
   },
   {
    'images': 'assets/images/61pPVRyfmgL 1.jpg',
    'category': 'grocery',
    'title': 'Refined Iodized 1kg Salt ',
    'subtitle': '',
    'cost': 'Rs 233',
    'ratings': '4.9',
    'reviews': '(123)',
    'isFavorite':false,
    // 'path': MountainDew(),
   
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
                        style: TextStyle(fontSize: 20, color: Color(0xff003853)),
                      ),
                      Text(
                        'Grocery',
                        style: TextStyle(fontSize: 20, color: Color(0xff39C7A5)),
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
                  Text(gridMap.length.toString(),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GroceryView2()));
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
                            image: AssetImage('assets/images/list 1.png'),
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
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.5),shrinkWrap: true, itemCount: gridMap.length, itemBuilder: (context, index) {
           // bool isFavorite = gridMap[index]['isFavorite'];
            return GestureDetector(
              onTap: () {
                          // final path = gridMap[index]['path'];
                          
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ItemsContent(item: gridMap)),
                            );
                          
                        },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffD5D5D5),
                            
                  ),
                ),
                  child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical:20, horizontal:10),
                                    child: Column(children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: const Color(0xffD5D5D5)),
                                            ),
                                             child: IconButton(
                                            iconSize: 15,
                                            onPressed: () {
                                              // isSelectedIndex = index; 
                                              print("shjghd");
                                              gridMap[index]['isFavorite'] = !gridMap[index]['isFavorite'];
                                              setState(() {});
                                            },
                                            icon: gridMap[index]['isFavorite'] == true
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
                                      Image.asset(
                                          gridMap[index]['images']),
                                      const SizedBox(height: 4),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            gridMap[index]['category'],
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF39C7A5))), //CATEGORY
                                        ],
                                      ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            gridMap[index]['title'],
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            gridMap[index]['subtitle'],
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                       Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              gridMap[index]['cost'],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ]),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star, color: Color(0xFFF8C50F)),
                                          Text(
                                            gridMap[index]['ratings'],
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gridMap[index]['reviews'],
                                              style: TextStyle(
                                                  fontSize: 10, color: Colors.grey)),
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
              ),
            );
          },)
                ],
              ),
        ));
  }
}

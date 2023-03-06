import 'package:flutter/material.dart';

import '../widgets/my_colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DetailScreen> {
  bool isSelected1 = false;
  bool isSelected2 = false;

  bool isSelected3 = false;

  bool isSelected4 = false;

  bool isSelected5 = false;

  bool isSelected6 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  const Text(
                    'Men\'s Shoes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Icon(Icons.shopping_bag_rounded)
                ],
              ),
              SizedBox(
                height: size.width - 30,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Image.asset("assets/2.png"),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'BEST SELLER',
                      style: TextStyle(
                        color: MyColors.myOrange,
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                      "Nike Air Jordan",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      '\$967.800',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Men's sneakers are made with leather upper features for durability and support, while perforations provide airflow during every shoe wear.",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Gallery',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/1.png',
                          width: 80,
                          height: 70,
                        ),
                        Image.asset(
                          'assets/2.png',
                          width: 80,
                          height: 70,
                        ),
                        Image.asset(
                          'assets/3.png',
                          width: 80,
                          height: 70,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: const [
                            Text('EU'),
                            SizedBox(
                              width: 3,
                            ),
                            Text('US'),
                            SizedBox(
                              width: 3,
                            ),
                            Text('UK'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSelected1 = !isSelected1;
                            });
                          },
                          icon: Text(
                            '38',
                            style: TextStyle(
                              color:
                                  isSelected1 ? MyColors.myOrange : Colors.grey,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSelected2 = !isSelected2;
                            });
                          },
                          icon: Text(
                            '39',
                            style: TextStyle(
                              color:
                                  isSelected2 ? MyColors.myOrange : Colors.grey,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSelected3 = !isSelected3;
                            });
                          },
                          icon: Text(
                            '40',
                            style: TextStyle(
                              color:
                                  isSelected3 ? MyColors.myOrange : Colors.grey,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSelected4 = !isSelected4;
                            });
                          },
                          icon: Text(
                            '41',
                            style: TextStyle(
                              color:
                                  isSelected4 ? MyColors.myOrange : Colors.grey,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSelected5 = !isSelected5;
                            });
                          },
                          icon: Text(
                            '42',
                            style: TextStyle(
                              color:
                                  isSelected5 ? MyColors.myOrange : Colors.grey,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSelected6 = !isSelected6;
                            });
                          },
                          icon: Text(
                            '43',
                            style: TextStyle(
                              color:
                                  isSelected6 ? MyColors.myOrange : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Price',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('\$849.69'),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(50),
                          // ),
                          width: 180,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.myOrange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: const Text(
                              'Add To Cart',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

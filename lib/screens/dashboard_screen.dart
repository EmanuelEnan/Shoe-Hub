import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/my_colors.dart';
import '../widgets/navigation_drawer.dart';
import '../models/data.dart';
import 'demo_screen.dart';
import 'detail_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  int currentTab = 0;

  Widget currentScreen = const DashboardScreen();

  final List screens = [
    const DashboardScreen(),
    const DemoScreen(),
    const DemoScreen(),
    const DemoScreen(),
  ];

  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map(
          (e) => Container(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? Colors.white : Colors.black38),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? MyColors.myOrange : Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                onPressed: () {},
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: MyColors.grayBackground,
                        child: Image.asset(
                          e.image,
                          height: 35,
                          width: 35,
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                  ],
                )),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const NavigationDraw(),
      body: ListView(
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 170),
            padding: const EdgeInsets.only(
              left: 11,
              right: 11,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  color: Colors.white70,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,

                          shape: const CircleBorder(), //<-- SEE HERE
                          padding: const EdgeInsets.all(10),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.donut_large_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Store location'),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: MyColors.orange,
                              ),
                              Text('Mondolibug, Sylhet')
                            ],
                          )
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,

                          shape: const CircleBorder(), //<-- SEE HERE
                          padding: const EdgeInsets.all(10),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.shopping_bag,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Looking for shoes",
                      fillColor: Colors.white70),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: buildCategories(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Popular Shoes',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.count(
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(5.0),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: Data.generateProducts()
                      .map(
                        (e) => Card(
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          elevation: 0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.leftToRight,
                                      child: const DetailScreen()));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    e.image,
                                    height: 90,
                                    width: double.infinity,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                        text: e.type,
                                        style: const TextStyle(
                                            color: MyColors.myOrange,
                                            fontSize: 16.0)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                        text: e.title,
                                        style: const TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18.0)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(
                                            text: "\$ ${e.price}",
                                            style: const TextStyle(
                                                color: Colors.black87,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      const Spacer(),
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  MyColors.myOrange),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'New Arrivals',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepPurple),
                        ),
                        height: 150,
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'BEST CHOICE',
                                  style: TextStyle(
                                    color: MyColors.myOrange,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  'Nike Air Jordan',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  '\$849.69',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/3.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.myOrange,
        onPressed: () {},
        child: const Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: currentTab == 0 ? MyColors.myOrange : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    currentScreen = screens[0];
                    currentTab = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: currentTab == 1 ? MyColors.myOrange : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    currentScreen = screens[1];
                    currentTab = 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.add_alert_rounded,
                  color: currentTab == 2 ? MyColors.myOrange : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    currentScreen = screens[2];
                    currentTab = 2;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: currentTab == 3 ? MyColors.myOrange : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    currentScreen = screens[3];
                    currentTab = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

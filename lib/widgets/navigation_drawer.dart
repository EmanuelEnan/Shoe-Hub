import 'package:flutter/material.dart';

class NavigationDraw extends StatefulWidget {
  const NavigationDraw({Key? key}) : super(key: key);

  @override
  State<NavigationDraw> createState() => _NavigationDrawState();
}

class _NavigationDrawState extends State<NavigationDraw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue[300],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Row(
                            children: const [
                              Text('Hey,'),
                              Icon(Icons.waving_hand_rounded)
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 14,
                            bottom: 8,
                          ),
                          child: Text(
                            'Alisson Becker',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.person,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.home,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Home Page',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.shopping_bag,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'My Cart',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.favorite,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Favorite',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.food_bank_rounded,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Orders',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.notification_add,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.logout,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Sign Out',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 23,
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

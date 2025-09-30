import 'package:flutter/material.dart';
import 'package:food_flow/widgets/bottom_navbar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Deliver now',
            style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,),
          ),
          Row(
            children: [
              Text(
                'Your location',
                style: TextStyle(fontWeight: FontWeight.bold,)
              ),
              Icon(
                Icons.expand_more,
                
              ),
            ],
          ),
        ],
      ),
      actions: [
        Switch(
          value: true,
          onChanged: (value) {},
          thumbIcon: const MaterialStatePropertyAll(
              // true ?
              Icon(Icons.delivery_dining)
              //  : Icon(Icons.shopping_cart),
              ),
        ),
        const SizedBox(width: 8.0),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0).copyWith(
            bottom: 4.0,
          ),
          child: TextFormField(
            onTap: () {},
            decoration: const InputDecoration(
              hintText: 'Search for restaurants, dishes...',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
      ),
      bottomNavigationBar: MainNavBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 22,),
        child: Column(
          children: [
            
          ],
        ),
      )
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            height: 190,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('Categories',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),),
                    Spacer(),
                    Image.asset('assets/images/foot.png'),
                    SizedBox(width: 12),
                    Image.asset('assets/images/cart.png'),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  width: 350,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: Theme.of(context).colorScheme.primary,
                      hintText: 'Search Product',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset('assets/images/Rectangle.png',),
                      ],
                    ),
                  ),
                  Container(child: Image.asset('assets/images/categories.png', width: double.infinity,),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
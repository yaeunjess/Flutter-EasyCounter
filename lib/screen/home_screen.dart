import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                setState(() {
                  count += 1;
                });
              },
              child: Center(
                  child: Text(
                    '$count',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 120.0,
                      color: Colors.white,
                    ),
                  ),
                ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: TextButton(
              onPressed:(){
                setState(() {
                  count = 0;
                });
              },
              child: Text(
                '초기화',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: TextButton(
              onPressed:(){
                setState(() {
                  count = 0;
                });
              },
              child: Text(
                '설정',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

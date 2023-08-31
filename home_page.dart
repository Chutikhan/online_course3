import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Chutikhan Srisutor',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //SizedBox(width: 8.0),
                        Image.asset(
                          'assets/images/hi.jpg',
                          width: 40.0,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/cat.jpg'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text('Courses', style: TextStyle(fontSize: 26.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม All Topics
                        Expanded(
                          child: _buildCategoryButton(
                            text: 'All Topics',
                            icon: Icons.water_drop,
                            color: Colors.lightBlue,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Popular
                        Expanded(
                          child: _buildCategoryButton(
                            text: 'Popular',
                            icon: Icons.bolt,
                            color: Colors.pink,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม Newest
                        Expanded(
                          child: _buildCategoryButton(
                            text: 'Newest',
                            icon: Icons.star,
                            color: Colors.orange,
                            isSelected: true,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Advanced
                        Expanded(
                          child: _buildCategoryButton(
                            text: 'Advanced',
                            icon: Icons.bookmark,
                            color: Colors.green,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('TEST'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildCategoryButton({
    required String text,
    required IconData icon,
    required Color color,
    required bool isSelected,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 7,
            blurRadius: 12,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: isSelected ? color : Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black87),
          ),
        ],
      ),
    );
  }
}


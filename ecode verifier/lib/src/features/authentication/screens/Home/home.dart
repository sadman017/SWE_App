import 'package:ecode_verifier/src/features/authentication/screens/Home/profile.dart';
import 'package:ecode_verifier/src/features/authentication/screens/Home/scanner.dart';
import 'package:ecode_verifier/src/features/authentication/screens/Home/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;
  List<Widget> widgetList =  [
    const ProfileScreen(),
     const Search(),
     Scanner(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: IndexedStack(
      index: myIndex,
      children: widgetList,
     ),
    bottomNavigationBar: BottomNavigationBar(
 type: BottomNavigationBarType.shifting,
 backgroundColor: Colors.white, // set the background color
 onTap: (index) {
   setState(() {
     myIndex = index;
   });
 },
 currentIndex: myIndex,
 items: const [
   BottomNavigationBarItem(
     icon: Icon(Icons.person_2_outlined), 
     label: 'Profile',
     backgroundColor: Colors.red, // set the background color for this item
   ),
   BottomNavigationBarItem(
     icon: Icon(Icons.search_sharp), 
     label: 'Search',
     backgroundColor: Colors.green, // set the background color for this item
   ),
   BottomNavigationBarItem(
     icon: Icon(Icons.qr_code_scanner_outlined), 
     label: 'Scanner',
     backgroundColor: Colors.blue, // set the background color for this item
   ),
 ],
),

    );
  }
}
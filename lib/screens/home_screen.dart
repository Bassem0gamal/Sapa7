import 'package:flutter/material.dart';
import 'package:sapa7_app/screens/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

  static String id = 'home_screen';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int theCounter = 0;

  void myCounter(){
    setState(() {
      theCounter++;
    });
  }

  void resetCounter(){
    setState(() {
      theCounter = 0;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  'Sapa7',
                  style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
              ),
            ),
            ListTile(
              title: const Text('Reset my counter'),
              onTap: resetCounter,
            ),
             ListTile(
              title: const Text('Log out'),
              onTap: (){
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sapa7',
          style: TextStyle(fontSize: 28.0, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Text(
              'My Counts',
              style: TextStyle(fontSize: 32.0, color: Colors.blueAccent),
            ),
            const SizedBox(height: 10.0,),
            Text('$theCounter',style: const TextStyle(fontSize: 32,color: Colors.blue),),
            const SizedBox(
              height: 80.0,
            ),
             FloatingActionButton(
              onPressed: myCounter,
              child: const Icon(
                Icons.add,
                size: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

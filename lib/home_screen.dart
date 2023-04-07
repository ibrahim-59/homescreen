import 'package:flutter/material.dart';
import 'package:homescreen/widgets/custom_listtile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 300,
                        child: ListTile(
                          leading: Icon(Icons.apple),
                          title: Text('Eaten'),
                          subtitle: Text('0 (KCal)'),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: ListTile(
                          leading: Icon(Icons.local_fire_department_outlined),
                          title: Text('Burned'),
                          subtitle: Text('0 (KCal)'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomListTile(
              Title: 'BreakFast',
              ImageName: 'assets/home_screen/icon1.png',
              SelectFood: (){},
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              Title: 'Launch',
              ImageName: 'assets/home_screen/icon2.png',
              SelectFood: (){},
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              Title: 'Dinner',
              ImageName: 'assets/home_screen/icon3.png',
              SelectFood: (){},
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              Title: 'Workout',
              ImageName: 'assets/home_screen/icon4.png',
              SelectFood: (){},
            )
          ],
        ));
  }
}

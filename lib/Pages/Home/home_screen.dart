import 'package:flutter/material.dart';
import 'package:flutter_tvapp/Components/Listas/images.dart';

import '../../Components/focused.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Background> _BackgroundList = Background.BackgroundList;
    List<Food> _FoodList = Food.FoodList;
    List<Simpsons> _SimpsonsList = Simpsons.SimpsonsList;
    return Scaffold(
        backgroundColor: Color(0xFF7D4DF1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Wallpaper",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
                child: ListView.builder(
                    itemCount: _BackgroundList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return focused(image: _BackgroundList[index].img);
                    }))),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Food",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
                child: ListView.builder(
                    itemCount: _FoodList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return focused(image: _FoodList[index].img);
                    }))),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Simpsons",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
                child: ListView.builder(
                    itemCount: _SimpsonsList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return focused(image: _SimpsonsList[index].img);
                    }))),
          ]),
        ));
  }
}

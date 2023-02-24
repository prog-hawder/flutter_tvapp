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
        backgroundColor: Color.fromARGB(255, 175, 172, 172),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(children: [
              Padding(
              padding: const EdgeInsets.fromLTRB(200, 20, 200, 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(34.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 1.0,
                          spreadRadius: 0.6)
                    ]),
                child: TextFormField(
                  cursorColor: Colors.white,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.black,
                    hintStyle: TextStyle(
                        color: Colors.black, fontSize: 20, fontFamily: 'Muli'),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(34)),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                child: Row(
                  children: [
                    Text(
                      "Wallpaper",
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
                padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                child: Row(
                  children: [
                    Text(
                      "Food",
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
                padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                child: Row(
                  children: [
                    Text(
                      "Simpsons",
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
          ),
        ));
  }
}

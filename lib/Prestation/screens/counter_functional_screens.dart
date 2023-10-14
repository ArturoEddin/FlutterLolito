import 'package:flutter/material.dart';

class CounterFunctionalScreens extends StatefulWidget {
  const CounterFunctionalScreens({super.key});

  @override
  State<CounterFunctionalScreens> createState() =>
      _CounterFunctionalScreensState();
}

class _CounterFunctionalScreensState extends State<CounterFunctionalScreens> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Counter Functional Screens")),
          actions: [
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      
                      setState(() {clickCounter = 0;});
                    },
                    icon: const Icon(Icons.refresh_outlined)),
              ],
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$clickCounter",
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text("Click${clickCounter == 1 ? "" : "s"} ",
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(height: 15),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                setState(() {
                  clickCounter--;
                });
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
          ],
        ));
  }
}

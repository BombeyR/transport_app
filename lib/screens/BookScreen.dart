import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    const List<String> originItems = [
      "Munich Hbf",
      "Bonn Hbf",
      "Erfurt Hbf",
      "Berlin"
    ];

    const List<String> destItems = [
      "Munich Hbf",
      "Bonn Hbf",
      "Erfurt Hbf",
      "Berlin"
    ];

    String? selectedOrigin = originItems.first;
    String? selectedDest = destItems.first;
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Select origin"),
                  DropdownButton<String>(
                      value: selectedOrigin,
                      items: originItems
                          .map((e) => DropdownMenuItem<String>(
                          value: e,
                          child: Text(e)))
                          .toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedOrigin = newValue;
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const Text("Select destination"),

                DropdownButton<String>(
                    value: selectedDest,
                    items: originItems
                        .map((e) => DropdownMenuItem<String>(
                        value: e,
                        child: Text(e)))
                        .toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedDest = newValue;
                      });
                    }),
              ],),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: const Text("BOOK"))



            ],
          ),
        ),
      ),
    );
  }
}

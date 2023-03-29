import 'dart:ffi';

import 'package:flutter/material.dart';

String description = "";
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "";
  String description = "";
  late double price = 0.0;
  getName(name) {
    this.name = name;
    print(this.name);
  }

  getDescription(description) {
    this.description = description;
    print(this.description);
  }

  getPrice(price) {
    this.price = double.parse(price);
    print(this.price);
  }

  createData() {
    print("Create");
  }

  readData() {
    print("Read");
  }

  updateData() {
    print("Update");
  }

  deleteData() {
    print("Delete");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Firebase CRUD"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Name",
            ),
            onChanged: (String name) {
              getName(name);
            },
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Description",
            ),
            onChanged: (String description) {
              getDescription(description);
            },
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Price",
            ),
            onChanged: (String price) {
              getPrice(price);
            },
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              textDirection: TextDirection.ltr,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Container(
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {
                        createData();
                      },
                      child: Text(
                        "Create",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Container(
                    color: Color.fromARGB(234, 243, 247, 8),
                    child: TextButton(
                      onPressed: () {
                        readData();
                      },
                      child: Text(
                        "Read",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Container(
                    color: Colors.green,
                    child: TextButton(
                        onPressed: () {
                          updateData();
                        },
                        child: Text(
                          "Update",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Container(
                    color: Colors.pink,
                    child: TextButton(
                        onPressed: () {
                          deleteData();
                        },
                        child: Text(
                          "Delete",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

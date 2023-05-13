import 'dart:html';

import 'package:flutter/material.dart';

InkWell jobCard(BuildContext context) {
  return InkWell(
    onTap: () => showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            width: 200,
            height: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              NetworkImage("https://picsum.photos/50"),
                        ),
                        Padding(padding: EdgeInsets.all(4)),
                        Text(
                          //title
                          "This is a Job",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      //title
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                      "eiusmod tempor incididunt ut labore et dolore magna aliqua."
                      " Ut enim ad minim veniam, quis nostrud exercitation ullamco "
                      "laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure "
                      "dolor in reprehenderit in voluptate velit esse cillum dolore eu "
                      "fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,"
                      " sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => print("yomama"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black)),
                      child: const SizedBox(
                          width: 150, child: Center(child: Text("Apply"))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ),
    child: Card(
      elevation: 10,
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: SizedBox(
        width: 380,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                //title
                "This is a Job",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage("https://picsum.photos/50"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("This is a Job description"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

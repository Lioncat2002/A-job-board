import 'package:flutter/material.dart';

InkWell jobCard(BuildContext context) {
  return InkWell(
    onTap: () => showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Text("Yomama"),
        );
      },
    ),
    child: Card(
      elevation: 20,
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

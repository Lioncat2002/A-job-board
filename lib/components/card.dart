import 'package:flutter/material.dart';

class JobCard extends StatefulWidget {
  final String jobTitle;

  final String jobDescription;

  final String smallJobDescription;

  const JobCard({
    super.key,
    required this.jobTitle,
    required this.smallJobDescription,
    required this.jobDescription,
  });

  @override
  State<StatefulWidget> createState() => JobCardState();
}

class JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => generateDialog(context),
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Flexible(
          //flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  //title
                  widget.jobTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage("https://picsum.photos/50"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.smallJobDescription),
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

  Future<dynamic> generateDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              NetworkImage("https://picsum.photos/50"),
                        ),
                        const Padding(padding: EdgeInsets.all(4)),
                        Flexible(
                          child: Text(
                            //title
                            widget.jobTitle,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.jobDescription,
                      //title
                      //"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                      //"eiusmod tempor incididunt ut labore et dolore magna aliqua."
                      //" Ut enim ad minim veniam, quis nostrud exercitation ullamco "
                      //"laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure "
                      //"dolor in reprehenderit in voluptate velit esse cillum dolore eu "
                      //"fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,"
                      //" sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: const TextStyle(
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
    );
  }
}

import 'package:flutter/material.dart';

class JobCard extends StatefulWidget {
  final String jobTitle;

  final String jobDescription;

  final String smallJobDescription;

  final String imageUrl;

  const JobCard({
    super.key,
    required this.jobTitle,
    required this.smallJobDescription,
    required this.jobDescription,
    required this.imageUrl,
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.jobTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(widget.imageUrl),
                  ),
                  const Padding(padding: EdgeInsets.all(4)),
                  Flexible(
                    child: Text(
                      widget.smallJobDescription,
                    ),
                  ),
                ],
              ),
            ],
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(widget.imageUrl),
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
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => print("you have successfully applied"),
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
        );
      },
    );
  }
}

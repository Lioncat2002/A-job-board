import 'package:flutter/material.dart';

import '../components/card.dart';

class Job extends StatelessWidget {
  const Job({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          JobCard(
            jobTitle: "This is a frontend project",
            smallJobDescription: "This is a small job description",
            jobDescription: "Big job description",
          ),
          JobCard(
            jobTitle: "This is a backend project",
            smallJobDescription: "This is another small job description",
            jobDescription: "Big job description",
          ),
          JobCard(
            jobTitle:
                "This is a game dev project bro this is shit. This is some",
            smallJobDescription: "This is a small job description for a game",
            jobDescription:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                "eiusmod tempor incididunt ut labore et dolore magna aliqua."
                " Ut enim ad minim veniam, quis nostrud exercitation ullamco "
                "laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure "
                "dolor in reprehenderit in voluptate velit esse cillum dolore eu "
                "fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,"
                " sunt in culpa qui officia deserunt mollit anim id est laborum.",
          ),
        ],
      ),
    );
  }
}

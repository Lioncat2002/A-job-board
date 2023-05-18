import 'package:flutter/material.dart';
import 'package:job_board/controllers/jobs.controller.dart';
import 'package:job_board/controllers/user.controller.dart';

import '../components/job_card.dart';

class Applied extends StatelessWidget {
  const Applied({
    Key? key,
  }) : super(key: key);

  static final user = fetchUser(); //fetching mock data

  @override
  Widget build(BuildContext context) {
    var appliedIds = user.applied;
    var applied = fetchJobs()
        .where((element) => appliedIds.contains(element.id))
        .toList();
    return Center(
      child: ListView.builder(
        itemCount: applied.length,
        itemBuilder: (BuildContext context, int index) {
          return JobCard(
            jobTitle: applied[index].jobTitle,
            smallJobDescription: applied[index].smallJobDescription,
            jobDescription: applied[index].jobDescription,
            imageUrl: applied[index].imageUrl,
          );
        },
      ),
    );
  }
}

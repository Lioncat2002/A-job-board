import 'package:flutter/material.dart';
import 'package:job_board/controllers/jobs.controller.dart';

import '../components/job_card.dart';
import '../controllers/user.controller.dart';

class Job extends StatelessWidget {
  const Job({
    Key? key,
  }) : super(key: key);

  static final jobs = fetchJobs(); //fetching mock data

  @override
  Widget build(BuildContext context) {
    var user = fetchUser();
    var notApplied =
        jobs.where((element) => !user.applied.contains(element.id)).toList();
    return Center(
      child: ListView.builder(
        itemCount: notApplied.length,
        itemBuilder: (BuildContext context, int index) {
          return JobCard(
            jobTitle: notApplied[index].jobTitle,
            smallJobDescription: notApplied[index].smallJobDescription,
            jobDescription: notApplied[index].jobDescription,
            imageUrl: notApplied[index].imageUrl,
          );
        },
      ),
    );
  }
}

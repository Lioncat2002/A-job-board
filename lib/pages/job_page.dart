import 'package:flutter/material.dart';
import 'package:job_board/controllers/jobs.controller.dart';

import '../components/job_card.dart';

class Job extends StatelessWidget {
  const Job({
    Key? key,
  }) : super(key: key);

  static final jobs = fetchArticle(); //fetching mock data

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (BuildContext context, int index) {
          return JobCard(
            jobTitle: jobs[index].jobTitle,
            smallJobDescription: jobs[index].smallJobDescription,
            jobDescription: jobs[index].jobDescription,
            imageUrl: jobs[index].imageUrl,
          );
        },
      ),
    );
  }
}

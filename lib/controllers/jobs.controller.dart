import 'package:job_board/mock/jobs.mock.dart';

import '../models/jobs.model.dart';

List<Job> fetchJobs() {
  //mock data fetching. Can be replaced with a get request from api
  const response = jobs;
  return response.map((model) => Job.fromJson(model)).toList();
}

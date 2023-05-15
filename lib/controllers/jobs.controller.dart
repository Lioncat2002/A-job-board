import 'package:job_board/mock/mock_jobs.dart';

import '../models/jobs.model.dart';

List<Job> fetchArticle() {
  //mock data fetching. Can be replaced with a get request from api
  const response = jobs;
  return response.map((model) => Job.fromJson(model)).toList();
}

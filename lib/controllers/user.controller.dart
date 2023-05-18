import 'package:job_board/mock/user.mock.dart';
import '../models/users.model.dart';

User fetchUser() {
  //mock data fetching. Can be replaced with a get request from api
  const response = user;
  return User.fromJson(response);
}

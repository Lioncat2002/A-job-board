//job model
class Job {
  final String id;
  final String jobTitle;
  final String smallJobDescription;
  final String jobDescription;
  final String imageUrl;

  Job(
      {required this.id,
      required this.jobTitle,
      required this.smallJobDescription,
      required this.jobDescription,
      required this.imageUrl});

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['_id']!,
      jobTitle: json['jobTitle']!,
      smallJobDescription: json['smallJobDescription']!,
      jobDescription: json['jobDescription']!,
      imageUrl: json['imageUrl']!,
    );
  }
}

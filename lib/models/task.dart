import 'package:intl/intl.dart';

class Task {
  Task({
    this.name,
    this.description,
    // this.startDate,
    // this.startTime,
    // this.endDate,
    // this.endTime,
    // this.videos,
    // this.readings,
    // this.categories,
    // this.days,
    // this.status,
    // this.complete,
    // this.archive,
  });

  String name;
  String description;
  // DateTime startDate;
  // DateTime endDate;
  // TimeOfDay startTime;
  // TimeOfDay endTime;
  // List videos;
  // List readings;
  // List categories;
  // List<int> days;
  // int status;
  // bool complete;
  // bool archive;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        name: json["name"],
        description: json["description"],
        // startDate: DateTime.parse(json["startDate"]),
        // startTime: TimeOfDay(
        //     hour: int.parse(json["startTime"].split(":")[0]),
        //     minute: int.parse(json["startTime"].split(":")[1])),
        // endDate: DateTime.parse(json["endDate"]),
        // endTime: TimeOfDay(
        //     hour: int.parse(json["endTime"].split(":")[0]),
        //     minute: int.parse(json["endTime"].split(":")[1])),
        // videos: List<String>.from(json["videos"].map((x) => x)),
        // readings: List<String>.from(json["readings"].map((x) => x)),
        // categories: List<String>.from(json["categories"].map((x) => x)),
        // days: List<int>.from(json["days"].map((x) => x)),
        // status: json["status"],
        // complete: json["complete"],
        // archive: json["archive"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        // "startDate": DateFormat('MM/dd/yyyy').format(startDate),
        // "endDate": DateFormat('MM/dd/yyyy').format(endDate),
        // "startTime": DateFormat.Hm().format(
        //   DateTime(DateTime.now().year, DateTime.now().month,
        //       DateTime.now().day, startTime.hour, startTime.minute),
        // ),
        // "endTime": DateFormat.Hm().format(
        //   DateTime(DateTime.now().year, DateTime.now().month,
        //       DateTime.now().day, endTime.hour, endTime.minute),
        // ),

        // "videos": List<dynamic>.from(videos.map((x) => x)),
        // "readings": List<dynamic>.from(readings.map((x) => x)),
        // "categories": List<dynamic>.from(categories.map((x) => x)),
        // "days": List<dynamic>.from(days.map((x) => x)),
        // "status": status,
        // "complete": complete,
        // "archive": archive,
      };
}

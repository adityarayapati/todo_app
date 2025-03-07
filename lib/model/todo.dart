// To parse this JSON data, do
//
//     final todo = todoFromJson(jsonString);

import 'dart:convert';

List<Todo> todoFromJson(String str) => List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));

String todoToJson(List<Todo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Todo {
  String objectId;
  String task;

  Todo({
    this.objectId = '',
    this.task = '',
  });

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
    objectId: json["objectId"],
    task: json["task"],
  );

  Map<String, dynamic> toJson() => {
    "objectId": objectId,
    "task": task,
  };
}

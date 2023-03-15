
import 'package:json_annotation/json_annotation.dart';
import 'package:learning_flutter/model/support.dart';
import 'package:learning_flutter/model/data.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
   Data? data;
   Support? support;
  User({
     this.data,
     this.support
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

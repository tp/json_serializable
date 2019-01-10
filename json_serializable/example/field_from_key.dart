// Copyright (c) 2017, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'field_from_key.g.dart';

@JsonSerializable()
class Data {
  final Map<String, Entry> entries;

  Data(this.entries);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Entry {
  @JsonKey(parentProvided: true)
  final String name;
  final int value;

  Entry(this.name, this.value);

  factory Entry.fromJson(Map<String, dynamic> json, {String name}) =>
      _$EntryFromJson(json);

  Map<String, dynamic> toJson({bool omitName}) => _$EntryToJson(this);
}

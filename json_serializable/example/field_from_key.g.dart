// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_from_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data((json['entries'] as Map<String, dynamic>)?.map((k, e) => MapEntry(
      k, e == null ? null : Entry.fromJson(e as Map<String, dynamic>))));
}

Map<String, dynamic> _$DataToJson(Data instance) =>
    <String, dynamic>{'entries': instance.entries};

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return Entry(json['name'] as String, json['value'] as int);
}

Map<String, dynamic> _$EntryToJson(Entry instance) =>
    <String, dynamic>{'name': instance.name, 'value': instance.value};

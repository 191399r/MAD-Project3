// To parse this JSON data, do
//
//     final busCode = busCodeFromJson(jsonString);

import 'dart:convert';

BusCode busCodeFromJson(String str) => BusCode.fromJson(json.decode(str));

String busCodeToJson(BusCode data) => json.encode(data.toJson());

class BusCode {
  BusCode({
    this.odataMetadata,
    this.value,
  });

  String odataMetadata;
  List<Value> value;

  factory BusCode.fromJson(Map<String, dynamic> json) => BusCode(
    odataMetadata: json["odata.metadata"],
    value: List<Value>.from(json["value"].map((x) => Value.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "odata.metadata": odataMetadata,
    "value": List<dynamic>.from(value.map((x) => x.toJson())),
  };
}

class Value {
  Value({
    this.busStopCode,
    this.roadName,
    this.description,
    this.latitude,
    this.longitude,
  });

  String busStopCode;
  String roadName;
  String description;
  double latitude;
  double longitude;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    busStopCode: json["BusStopCode"],
    roadName: json["RoadName"],
    description: json["Description"],
    latitude: json["Latitude"].toDouble(),
    longitude: json["Longitude"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "BusStopCode": busStopCode,
    "RoadName": roadName,
    "Description": description,
    "Latitude": latitude,
    "Longitude": longitude,
  };
}
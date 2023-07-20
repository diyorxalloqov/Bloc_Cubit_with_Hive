import 'package:hive/hive.dart';
part 'Model.g.dart';

@HiveType(typeId: 0)
class Model {
  @HiveField(0)
  int? count;
  @HiveField(1)
  List<Entries>? entries;

  Model({this.count, this.entries});

  Model.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['entries'] != null) {
      entries = <Entries>[];
      json['entries'].forEach((v) {
        entries!.add(new Entries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.entries != null) {
      data['entries'] = this.entries!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@HiveType(typeId: 1)
class Entries {
  @HiveField(0)
  String? aPI;
  @HiveField(1)
  String? description;
  @HiveField(2)
  String? auth;
  @HiveField(3)
  bool? hTTPS;
  @HiveField(4)
  String? cors;
  @HiveField(5)
  String? link;
  @HiveField(6)
  String? category;

  Entries(
      {this.aPI,
      this.description,
      this.auth,
      this.hTTPS,
      this.cors,
      this.link,
      this.category});

  Entries.fromJson(Map<String, dynamic> json) {
    aPI = json['API'];
    description = json['Description'];
    auth = json['Auth'];
    hTTPS = json['HTTPS'];
    cors = json['Cors'];
    link = json['Link'];
    category = json['Category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['API'] = this.aPI;
    data['Description'] = this.description;
    data['Auth'] = this.auth;
    data['HTTPS'] = this.hTTPS;
    data['Cors'] = this.cors;
    data['Link'] = this.link;
    data['Category'] = this.category;
    return data;
  }
}

import 'dart:io';

import 'package:bloc_cubit_with_hive/model/Model.dart';
import 'package:bloc_cubit_with_hive/service/Service.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class DBService {
  Box<Model>? box;
  Service service = Service();

  Future<dynamic> checkData() async {
    await openBox();
    if (box!.isNotEmpty) {
      return box!.get("Data");
    } else {
      return getData();
    }
  }

  Future<dynamic> getData() async {
    dynamic response = await service.getData();
    if (response is Model) {
      await openBox();
      await writeToDB(response);
      return box!.get("Data");
    } else {
      return response;
    }
  }

  Future<void> writeToDB(Model model) async {
    await openBox();
    await box!.put("Data", model);
  }

  static void registerAdapter() {
    Hive.registerAdapter(ModelAdapter());
    Hive.registerAdapter(EntriesAdapter());
  }

  Future<void> openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    box = await Hive.openBox("DB");
  }
}

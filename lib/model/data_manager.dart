//import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:collection';
//import 'package:projet_transverse_equipe_7/model/prescription.dart';

class DataManager {
  String file_name = "assets/json/data_json.json";
  String file_content = "hello";
  //HashMap hashMap = new HashMap<int, Prescription>();

  DataManager();

  void getPath(){
    print("root path: " + rootBundle.toString());
  }

  Future<String> getJsonString() async {
    return await rootBundle.loadString(file_name);
  }

  Future<File> WritePrescription(String text_content, String id_prescription) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/${id_prescription}.json');
    print("directory path: " + directory.path);
    return file.writeAsString(text_content);
  }

  Future<String> ReadPrescription(String id_prescription) async {
    String text = "";
    try {
      final Directory directory = await getApplicationDocumentsDirectory();
      final File file = File('${directory.path}/${id_prescription}.json');
      text = await file.readAsString();
    } catch (e) {
      print("Couldn't read file");
    }
    file_content = text;
    print("fonction: text:" + text);
    print("fonction: file_content:" + file_content);
    return text;
  }

  void GetPrescriptionContent(String id_prescription) async {
    file_content = await ReadPrescription(id_prescription);
  }

  Future<String> createFolderInAppDocDir(String folderName) async {
    //Get this App Document Directory

    final Directory _appDocDir = await getApplicationDocumentsDirectory();
    //App Document Directory + folder name
    final Directory _appDocDirFolder =
    Directory('${_appDocDir.path}/$folderName/');

    if (await _appDocDirFolder.exists()) {
      //if folder already exists return path
      return _appDocDirFolder.path;
    } else {
      //if folder not exists create folder and then return its path
      final Directory _appDocDirNewFolder =
      await _appDocDirFolder.create(recursive: true);
      return _appDocDirNewFolder.path;
    }
  }

/*Future<void> getData() async {
    String data = await rootBundle.loadString(file_name);
    data = data.substring(1, data.length-1);
    print(data);
    var data_prescriptions =[] ;
    data_prescriptions = data.split("{");
    var attrib = [];
    for(int i=1;i<data_prescriptions.length;i++){
      print("att " + i.toString());
      //print(data_prescriptions[i]);
      String prescription = data_prescriptions[i].trim();
      String prescription2 = "";
      if(i == data_prescriptions.length-1) {
        prescription2 = prescription.substring(0, prescription.length - 1);
        print("ici: dernier");
      }else {
        prescription2 = prescription.substring(0, prescription.length - 2);
        print("premier");
      }
      print (prescription2);

      /*var p = data_prescriptions[i].substring(1, data.length-1);
      var attributes = p.split(",");
      for(int j=0;j<attributes.length;j++) {
        final attribute = attributes[j].split(":");
        attrib.add(attribute[1]);
      }

      print("attributes:");
      print(attrib.toString());
      attrib.clear();*/
    }
    /*
    data_prescriptions.forEach((p) => () {
      print(p);
      p = p.substring(1, data.length-1);
      final prescription = data.split(",");
      prescription.forEach((att) => () {
        final attributes = att.split(",");
        attrib.add(attributes[1]);
      });
      print("attributes:");
      print(attrib.toString());
      attrib.clear();
    });
    */
    print("test");
  }
  */

}
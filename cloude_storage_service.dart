import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

import 'package:get/get.dart';
import 'package:quiz_app/model/file.model.dart';
// import 'package:quiz_app/model/response_model.dart';
import 'package:quiz_app/services/api_service.dart';
// import 'package:quiz_app/services/services.dart';
// import 'package:dio/dio.dart' as dio;
// import 'package:quiz_app/utils/utils.dart';

import '../model/answer.dart';

class CloudeStorageService extends GetxService {
  static ApiService api = ApiService();

  Future<List<AnswerModel>> geturlsFromDirectory(String path) async {
    ListResult futureFiles = await FirebaseStorage.instance.ref(path).listAll();
    List<AnswerModel> files = [];
    print("files ${futureFiles.items.length}");
    for (var element in futureFiles.items) {
      if (!element.name.contains("Quiz")) {
        final imageUrl = await element.getDownloadURL();
        files.add(AnswerModel(
            name: element.name.split(".")[0],
            url: imageUrl,
            isAnswer: element.name.contains('Answer')));
      }
    }

    return files;
  }

  Future<String> getFileUrl({required path}) async {
    final storageRef = FirebaseStorage.instance.ref();
    String imageUrl = "";
// Create a reference with an initial file path and name
    final pathReference = storageRef.child(path);
    try {
      imageUrl = await pathReference.getDownloadURL();
    } catch (e) {
      print("No image found");
    }
    return imageUrl;
  }

  uploadToDirectory(
      {required String filePath,
      required String directorypath,
      String? name}) async {
    final path =
        "${directorypath}/${(name != null) ? (name + "." + basename(filePath).split(".")[1]) : basename(filePath)}";
    final File file = File(filePath);
    final storageRef = FirebaseStorage.instance.ref().child(path);
    // final metadata = SettableMetadata(contentType: "filePath/jpeg");
// Upload file and metadata to the path 'images/mountains.jpg'
    await storageRef.putFile(file);

// Listen for state changes, errors, and completion of the upload.
  }

  Future<List<FileModel>> getFilesUrlAndNameFromDirectory(String path) async {
    ListResult futureFiles = await FirebaseStorage.instance.ref(path).listAll();
    List<FileModel> files = [];
    print("files ${futureFiles.items.length}");
    for (var element in futureFiles.items) {
      final imageUrl = await element.getDownloadURL();
      files.add(FileModel(name: element.name.split(".")[0], url: imageUrl));
    }

    return await files;
  }

  // static Future getFolderContent({required String fbsUrl, onSuccess}) async {
  //   await api.normalRequest(Services.getFolderContent, "GET",
  //       queryParamters: {"path": fbsUrl}, onSuccess: (data) {
  //     // Get.find<StorageService>().setToken(data);
  //     var res = ResponseModel.fromJson(data);
  //     if (onSuccess != null) onSuccess(res.data);
  //   });
  // }

  // static Future uploadAndReplaceFile(
  //     {required File file, required String path, onSuccess, onError}) async {
  //   var fromData = dio.FormData.fromMap(
  //       {"file": await dio.MultipartFile.fromFile(file.path), "path": path});
  //   // print("fromData ${await dio.MultipartFile.fromFile(doc.path)}");
  //   await api.normalRequest(Services.uploadAndReplaceFile, "POST",
  //       data: fromData,
  //       onSuccess: (data) {
  //         // Get.find<StorageService>().setToken(res);
  //         var res = ResponseModel.fromJson(data);
  //         if (onSuccess != null) onSuccess(res);
  //       },
  //       beforeSend: (c, t) => showProgressDialog());
  // }

  // static Future uploadManyFiles(
  //     {required List<File> files,
  //     required String path,
  //     onSuccess,
  //     onError}) async {
  //   var list = [];
  //   for (var file in files) {
  //     var multipartFile = await dio.MultipartFile.fromFile(file.path);
  //     list.add(multipartFile);
  //   }
  //   var fromData = dio.FormData.fromMap({"files": list, "path": path});
  //   // print("fromData ${await dio.MultipartFizle.fromFile(doc.path)}");
  //   await api.normalRequest(Services.uploadManyFiles, "POST",
  //       data: fromData,
  //       onSuccess: (data) {
  //         // Get.find<StorageService>().setToken(res);
  //         var res = ResponseModel.fromJson(data);
  //         if (onSuccess != null) onSuccess(res);
  //       },
  //       beforeSend: (c, t) => showProgressDialog());
  // }
}

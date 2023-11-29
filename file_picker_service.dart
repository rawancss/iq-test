import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';

class Picker extends GetxService {
  final FilePicker _filePicker = FilePicker.platform;

  Future<File?> pickImage() async {
    File? file;
    FilePickerResult? result = await _filePicker.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      file = File(result.files.single.path!);
      return file;
    } else {
      // User canceled the picker
      return file;
    }
  }

  Future<List<File>?> pickMultiImages() async {
    List<File>? files;
    FilePickerResult? result = await _filePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', 'jpeg'],
        allowMultiple: true);
    if (result != null) {
      files = result.paths.map((path) => File(path!)).toList();
      print(files[0].toString());
      print(files[0].path);
      return files;
    } else {
      // User canceled the picker
      return [];
    }
  }

  Future<List<File>?> pickSeveralImages() async {
    List<File>? files;
    FilePickerResult? result =
        await _filePicker.pickFiles(type: FileType.image, allowMultiple: true);
    if (result != null) {
      files = result.paths.map((path) => File(path!)).toList();
      return files;
    } else {
      return null;
    }
  }
}

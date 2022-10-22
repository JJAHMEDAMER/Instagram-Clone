import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

chooseImage(ImageSource source) async {
  final _imagePicker = ImagePicker();
  XFile? _image = await _imagePicker.pickImage(source: source);

  if (_image != null) {
    return await _image.readAsBytes();
  }
  print("No Image Selected");
}

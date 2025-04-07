import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:image_picker/image_picker.dart';

class ImageCropperScreen extends StatefulWidget {
  @override
  _ImageCropperScreenState createState() => _ImageCropperScreenState();
}

class _ImageCropperScreenState extends State<ImageCropperScreen> {
  final CropController _cropController = CropController();
  File? _imageFile;
  Uint8List? _croppedImage;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        _croppedImage = null; // Reset cropped image
      });
    }
  }

  void _cropImage() {
    _cropController.crop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Cropper")),
      body: Column(
        children: [
          ElevatedButton(onPressed: _pickImage, child: Text("Select Image")),
          if (_imageFile != null && _croppedImage == null)
            Expanded(
              child: Crop(
                image: File(_imageFile!.path).readAsBytesSync(),
                controller: _cropController,
                onCropped: (croppedData) {
                  setState(() {
                    _croppedImage = croppedData as Uint8List?;
                  });
                },
                aspectRatio: 1, // 1 -> Golo, 4/3 -> Charpate
              ),
            ),
          if (_croppedImage != null)
            Expanded(
              child: Image.memory(_croppedImage!), // Cropped image preview
            ),
          ElevatedButton(onPressed: _cropImage, child: Text("Crop & Save")),
        ],
      ),
    );
  }
}

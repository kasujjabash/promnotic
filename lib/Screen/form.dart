import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:promnotic/componets/form_textfield.dart';

class AdvertForm extends StatelessWidget {
  final tittleController = TextEditingController();
  final cityController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final quantityController = TextEditingController();

// function to pick image from galley

  void pickImage(BuildContext context) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No image selected!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  // function to take camera pick
  void takeImage(BuildContext context) async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No image captured!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  AdvertForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post an Ad'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FormTextField(
              controller: tittleController,
              labelText: 'Title:',
            ),
            FormTextField(
              controller: cityController,
              labelText: 'City/Town/Province:',
            ),
            FormTextField(
              controller: priceController,
              labelText: 'Price for each:',
            ),
            const SizedBox(
              width: 10,
            ),
            FormTextField(
              controller: quantityController,
              labelText: 'Available quantity:',
            ),
            //  const MyTextArea(
            //     labelText: 'Description',
            //   )

            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  //?Pick images from gallery
                  ElevatedButton(
                      onPressed: () => pickImage(context),
                      child: const Row(
                        children: [
                          Icon(Icons.image_outlined),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Pick image from galley')
                        ],
                      )),
                  //?Use camera
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                      onPressed: () => takeImage(context),
                      child: const Row(
                        children: [
                          Icon(Icons.camera_alt_outlined),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Use camera')
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

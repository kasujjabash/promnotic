import 'package:flutter/material.dart';
import 'package:promnotic/componets/form_textfield.dart';


class AdvertForm extends StatelessWidget {
  final tittleController = TextEditingController();
  final cityController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final quantityController = TextEditingController();
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
            )
            //  const MyTextArea(
            //     labelText: 'Description',
            //   )
          ],
        ),
      ),
    );
  }
}

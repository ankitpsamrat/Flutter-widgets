import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({super.key});

  //  to validate user input
  final _formKey = GlobalKey<FormState>();

  //  to take input from user
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Text Form Field Widget'),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  controller: textController,
                  // to auto validation
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // to validate user input
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                  // to open keyboard automaticaly
                  // autofocus: true,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    // to reduce hight
                    isDense: true,
                    hintText: 'Enter name',
                    suffixIcon: IconButton(
                      onPressed: () {
                        textController.clear();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ConfirmationPage();
                        },
                      ),
                    );
                  }
                },
                child: const Text(
                  'Go to next page',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Welcome'),
      ),
      body: const Center(
        child: Text('Welcome guys!'),
      ),
    );
  }
}

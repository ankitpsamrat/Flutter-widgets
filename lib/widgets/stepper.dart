import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Stepper Widget'),
      ),
      body: Stepper(
        steps: [
          Step(
            isActive: currentIdx == 0,
            title: const Text('Step1'),
            content: const Text('Ankit'),
          ),
          Step(
            isActive: currentIdx == 1,
            title: const Text('Step2'),
            content: const Text('Pratap'),
          ),
          Step(
            isActive: currentIdx == 2,
            title: const Text('Step3'),
            content: const Text('Samrat'),
          ),
        ],
        currentStep: currentIdx,
        // type: StepperType.horizontal,
        onStepTapped: (value) {
          setState(() {
            currentIdx = value;
          });
        },
        onStepContinue: () {
          if (currentIdx != 2) {
            setState(() {
              currentIdx++;
            });
          }
        },
        onStepCancel: () {
          if (currentIdx != 0) {
            setState(() {
              currentIdx--;
            });
          }
        },
      ),
    );
  }
}

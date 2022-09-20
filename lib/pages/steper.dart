import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stepper extends StatefulWidget {
  const stepper({Key? key}) : super(key: key);

  @override
  State<stepper> createState() => _stepperState();
}

class _stepperState extends State<stepper> {
  var _step = [
    Step(title: Text("Step 1"), content: Text("Go to 2 Step ")),
    Step(title: Text("Step 2"), content: Text("Go to 3 Step ")),
    Step(title: Text("Step 3"), content: Text("Go to 4 Step ")),
    Step(title: Text("Step 4"), content: Text("Go to 5 Step ")),
    Step(title: Text("Step 5"), content: Text("All Complete")),
  ];
  var _currentstep=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(steps: _step,
      currentStep: _currentstep,
        onStepContinue: (){
        if(_currentstep< _step.length-1) {
          setState(() {
            _currentstep++;
          });
        }
        },
        onStepCancel: (){
          if(_currentstep>0) {
            setState(() {
              _currentstep--;
            });
          }
        },

      ),
    );
  }
}

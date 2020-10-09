import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetClass createState() => new CheckboxWidgetClass();
}

class CheckboxWidgetClass extends State {
  bool isChecked = false;

  var resultHolder = 'Checkbox is UN-CHECKED';

  void toggleCheckbox(bool value) {
    if (isChecked == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
        resultHolder = 'Checkbox is CHECKED';
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;
        resultHolder = 'Checkbox is UN-CHECKED';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
        scale: 1.5,
        child: Checkbox(
          value: isChecked,
          onChanged: (value) {
            toggleCheckbox(value);
          },
          activeColor: Colors.red[900],
          checkColor: Colors.white,
          tristate: false,
        ),
      ),
      Text(
        '$resultHolder',
        style: TextStyle(fontSize: 22),
      )
    ]);
  }
}

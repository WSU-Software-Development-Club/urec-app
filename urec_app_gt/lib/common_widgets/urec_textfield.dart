import 'package:flutter/material.dart';
import 'package:urec_app_gt/urec_themes/urec_themes.dart';


//allows users to type text into an app
class UrecText extends StatelessWidget {
  //const UrecText({super.key});
  //Parameters for customizations!
  final String hintText;
  final bool isPassword; //to determine if its a password field
  final bool isEnabled; //to determine if the textfield is enabled
  final bool isBorder;
  final bool isError;
  final double horizontal;
  final double vertical;
  final FormFieldValidator<String>? validator; // For TextFormField validation
  final String? errorText; // Optional error text to display
  final String? labelText; // Optional label text
  final TextInputType inputType; // Input type
  //? indicates that it can also be a null

  //default values in required keyword is not used
  // Constructor with parameters
  const UrecText(
      {super.key,
      this.hintText = 'Enter text', // Default hint text
      this.isPassword = false, // Default to false
      this.isEnabled = true, // Default to enabled
      this.isBorder = false,
      this.isError = false,
      this.horizontal = 16,
      this.vertical = 8,
      this.validator, //optional validator I dont need to set equal to anything becuase I used ?
      this.errorText,
      this.labelText,
      this.inputType = TextInputType.text, //default one!
      //TextInputType.emailAddress: For email input.
      //TextInputType.phone: For phone numbers.
      //TextInputType.number: For numeric input.
      //TextInputType.url: For URLs.
      }
    );

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              //make sure to remove the padding keyword
              padding: EdgeInsets.symmetric(
                  horizontal: horizontal, vertical: vertical),
              child: TextFormField(
                enabled: isEnabled,
                keyboardType: inputType, //!
                obscureText: isPassword,
                style: TextStyle(
                  color: isError != true ? Colors.black : const Color.fromARGB(255, 255, 0, 51),
                ),
                decoration: InputDecoration(
                  border: isBorder
                      ? OutlineInputBorder()
                      : UnderlineInputBorder(), // Conditional border
                  hintText: hintText, //shows in grey letter
                  labelText: labelText,
                  
                  //error!
                  
                  errorText: errorText, //show error only when its provided!
                  errorStyle: TextStyle(color: const Color.fromARGB(255, 255, 0, 51)),
                  errorBorder: isBorder
                          ? OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 255, 0, 51)),)
                          : UnderlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 255, 0, 51)),),
                  focusedErrorBorder: isBorder
                          ? OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 255, 0, 51)),)
                          : UnderlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 255, 0, 51)),),
                ),
                validator: (validator) {
                  if (validator == null || validator.isEmpty) {
                    return 'Please enter a value!';
                  }
                  return null;
                },
              ))
        ]);
  }
}

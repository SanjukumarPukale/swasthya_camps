import 'package:flutter/material.dart';
import 'package:swasthya_camps/utils/app_color.dart';
import 'package:intl/intl.dart'; 

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final FormFieldValidator<String?>? validator;
  final bool? enabled;
  final TextInputType? keyboardType;
  AppTextFormField({super.key, this.controller, this.hintText, this.validator, this.enabled, this.keyboardType});


  @override
  Widget build(BuildContext context) {
    return 
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: TextFormField(
              validator: validator,
              controller: controller,
              style: TextStyle(color: AppColor.purpleDark), // Text color
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.purpleLight, // Light purple background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none, // No border
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                hintText: hintText,
                hintStyle: TextStyle(color: AppColor.purpleDark), // Hint text color
                // suffixIcon: Icon(Icons.send, color: Colors.white), // Custom suffix icon
              ),
            ),
          ),
        );
      
    
  }
}

class CalendarTextField extends StatefulWidget {
  const CalendarTextField({super.key, this.controller, this.hintText, this.validator, this.enabled, this.keyboardType});
  final TextEditingController? controller;
  final String? hintText;
  final FormFieldValidator<String?>? validator;
  final bool? enabled;
  final TextInputType? keyboardType;

  @override
  State<CalendarTextField> createState() => _CalendarStateTextField();
}

class _CalendarStateTextField extends State<CalendarTextField> {

  DateTime? selectedDate; // Vari

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: 
TextFormField(
  validator: widget.validator,
  controller: widget.controller,
  style: TextStyle(color: AppColor.purpleDark),
  decoration: InputDecoration(
    filled: true,
    fillColor: AppColor.purpleLight,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
    hintText: widget.hintText,
    hintStyle: TextStyle(color: AppColor.purpleDark),
    suffixIcon: InkWell(
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        ).then((pickedDate) {
          if (pickedDate != null) {
            setState(() {
              selectedDate = pickedDate;
              widget.controller?.text = formatDate(selectedDate!); // Update the TextFormField's text
            });
          }
        });
      },
      child: Icon(Icons.calendar_today, color: AppColor.purpleDark),
    ),
  ),
)
          ),
        );
  }

  String formatDate(DateTime date) {
  final formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(date);
}
}
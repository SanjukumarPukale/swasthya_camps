import 'package:flutter/material.dart';
import 'package:swasthya_camps/components/texformfield.dart';
import 'package:swasthya_camps/utils/app_color.dart';

class OrganizeCamp extends StatefulWidget {
  const OrganizeCamp({super.key});

  @override
  State<OrganizeCamp> createState() => _OrganizeCampState();
}

class _OrganizeCampState extends State<OrganizeCamp> {
  TextEditingController organizationController = TextEditingController();
  TextEditingController purposeController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.purpleDark,
        centerTitle: true,
        title: Text('Organize Camp'),
      ),
      body: ListView(
        children: [
          AppTextFormField(
            hintText: 'Organization',
            controller: organizationController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required field';
              }
            },
          ),
          AppTextFormField(
            hintText: 'Purpose',
            controller: purposeController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required field';
              }
            },
          ),
          // AppTextFormField(
          //   hintText: 'Start Date',
          //   controller: startDateController,
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Required field';
          //     }
          //   },
          // ),
          // AppTextFormField(
          //   hintText: 'End Date',
          //   controller: endDateController,
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Required field';
          //     }
          //   },
          // ),
          CalendarTextField(
            hintText: 'Start date',
            controller: startDateController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required field';
              }
            },
          ),
          CalendarTextField(
            hintText: 'End date',
            controller: endDateController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required field';
              }
            },
          ),
          AppTextFormField(
            hintText: 'Address',
            controller: addressController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required field';
              }
            },
          ),
          AppTextFormField(
            hintText: 'Contact Number',
            controller: contactController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required field';
              }
            },
          ),
          AppTextFormField(
            hintText: 'Email Id',
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required field';
              }
            },
          ),
          AppTextFormField(
            hintText: 'Description',
            controller: descriptionController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required field';
              }
            },
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColor.purpleDark,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Submit',
                  style: TextStyle(color: AppColor.purpleLight, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

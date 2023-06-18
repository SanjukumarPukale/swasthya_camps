import 'package:flutter/material.dart';
import 'package:swasthya_camps/screens/organize_camp.dart';
import 'package:swasthya_camps/utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.purpleDark,
        title: Text('Events'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: SizedBox(
              height: 300,
              child: Card(
                color: AppColor.purpleLight,
                elevation: 10, // Adding elevation to the card
                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                child: Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(12.0),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Container(
                        height: 50,
                        width: double.infinity,
                        
                        decoration: BoxDecoration(
                          color: Colors.purple.withOpacity(0.2),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                        ),
                         child: Center(
                           child: Text(
                                        'Organization Name',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: AppColor.purpleDark
                                        ),
                                      ),
                         ),
                       ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 180,
                            width: 120,
                            decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                            child: Image.network(
                              'https://assets.thehansindia.com/hansindia-bucket/2019/01/Health_3611.jpg', // Replace with the actual image URL
                              fit: BoxFit.fill,
                            ),
                            
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 
                                  SizedBox(height: 4),
                                  Text(
                                    'Purpose: Camp Purpose',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Address: Camp Address',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Contact: 9741568249',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Email: Email ID',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Description: Camp Description',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.2),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(Icons.favorite, color: Colors.white,),
                                ),
                                Text('02-06-2023 7:55 PM', style: TextStyle(color: AppColor.purpleDark),),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(Icons.calendar_today,color: AppColor.purpleDark),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OrganizeCamp()));
        },
        child: Container(
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
                              color: AppColor.purpleDark,
                              borderRadius: BorderRadius.circular(20)
                            ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: AppColor.purpleLight,),
                SizedBox(width: 10,),
                Text('Organize Camp', style: TextStyle(color: AppColor.purpleLight,fontSize: 20),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

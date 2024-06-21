import 'package:flutter/material.dart';

import '../../../Universal_Widgets/custom_text.dart';
import '../../../Utils/All_List/all_list.dart';

class BookSlotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: CustomText(
                  title: "Select meeting time",
                  fontColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                content: Container(
                  height: 200, // Set fixed height for content
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemCount: AllList.timeSlotList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 5.0), // Add margin for spacing
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center, // Center the text
                        child: CustomText(
                          title: AllList.timeSlotList[index],
                          fontColor: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // Submit action
                    },
                    child: CustomText(
                      title: "Submit",
                      fontColor: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: CustomText(
                      title: "Cancel",
                      fontColor: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Card(
          color: Colors.blue,
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0), // Use EdgeInsets instead of sp
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                const SizedBox(width: 8.0), // Use EdgeInsets instead of sp
                CustomText(
                  title: "Book a meeting",
                  fontColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// CustomText(
// title: "Book a meeting",
// fontColor: Colors.white,
// fontWeight: FontWeight.bold,
// ),
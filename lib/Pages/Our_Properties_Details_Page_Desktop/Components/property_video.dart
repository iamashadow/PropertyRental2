import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/All_List/all_list.dart';
import 'package:video_player/video_player.dart';
import '../../../Universal_Widgets/custom_text.dart';

class PropertyVideo extends StatefulWidget {
  const PropertyVideo({super.key});

  @override
  State<PropertyVideo> createState() => _PropertyVideoState();
}

class _PropertyVideoState extends State<PropertyVideo> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(

      Uri.parse(AllList.propertyVideo2,),
    );

    // Initialize the controller
    videoPlayerController.initialize().then((_) {
      // Ensure the video is initialized before playing
      setState(() {});
    });
  }

  @override
  void dispose() {
    videoPlayerController.dispose(); // Release resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text: Property Video
        CustomText(
          title: "Property Video",
          fontColor: const Color(0xFF4B5EA3),
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 1.sh * 0.010),

        // Video player using VideoPlayer widget
        AspectRatio(
          aspectRatio: 16/9,
            child: VideoPlayer(videoPlayerController),
        ),
      ],
    );
  }
}

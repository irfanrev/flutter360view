import 'package:flutter/material.dart';
import 'package:flutter360view/feature/videoview/video_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image View 360'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    'Image View 360',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text('Sample flutter 360 view using image'),
                ),
                Divider(
                  height: 2,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () => Get.to(const VideoPage()),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Video View 360',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text('Sample flutter 360 view using base url video'),
                  ),
                  Divider(
                    height: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

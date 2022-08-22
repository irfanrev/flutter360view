import 'package:flutter/material.dart';
import 'package:flutter360view/feature/videoview/video_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:video_360/video_360.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoController>(
      init: VideoController(),
      builder: (c) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Video View 360'),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Video360View(
                    onVideo360ViewCreated: c.onVideo360ViewCreated,
                    url:
                        'https://multiplatform-f.akamaihd.net/i/multi/will/bunny/big_buck_bunny_,640x360_400,640x360_700,640x360_1000,950x540_1500,.f4v.csmil/master.m3u8',
                    onPlayInfo: (Video360PlayInfo info) {
                      c.durationText.value = info.duration.toString();
                      c.totalText.value = info.total.toString();
                    },
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          c.controller.play();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                        ),
                        child: Text('Play'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          c.controller.stop();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                        ),
                        child: Text('Stop'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          c.controller.reset();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                        ),
                        child: Text('Reset'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          c.controller.jumpTo(80000);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                        ),
                        child: Text('1:20'),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

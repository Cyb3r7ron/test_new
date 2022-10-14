import 'package:flutter/material.dart';
import 'package:test_new/Videos/medeb_two/akal_three.dart';
import 'package:video_player/video_player.dart';

class AkalTwo extends StatefulWidget {
  const AkalTwo({Key? key}) : super(key: key);

  @override
  _AkalTwoState createState() => _AkalTwoState();
}

class _AkalTwoState extends State<AkalTwo> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.asset(
        'assets/videos/medeb_two_akal/second vid.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("ምድብ 2/አካል ጉዳተኛ"),
        backgroundColor: Colors.greenAccent[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            ),
            Text("Total Duration: ${controller.value.duration}"),
            VideoProgressIndicator(
              controller,
              allowScrubbing: true,
              colors: VideoProgressColors(
                backgroundColor: Colors.redAccent,
                playedColor: Colors.green,
                bufferedColor: Colors.purple,
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        if (controller.value.isPlaying) {
                          controller.pause();
                        } else {
                          controller.play();
                        }

                        setState(() {});
                      },
                      icon: Icon(controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow)),
                  IconButton(
                    onPressed: () {
                      controller.seekTo(Duration(seconds: 0));
                      setState(() {});
                    },
                    icon: Icon(Icons.stop),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Flexible(
                  child: Text(
                      "የተሽከርካሪ ፍተሻን ጨምሮ በቅድመ ጉዞ ዝግጅት ወቅት ያሉ ተግባራትን የሚያሳይ ቪዲዮ"),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        //child: Text('Next Page'),
        label: Text('Next Video'),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const AkalThree();
              },
            ),
          );
        },
      ),
      // second button
    );
  }
}








// ignore_for_file: prefer_const_constructors

/*import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController = VideoPlayerController.network(
        'https://cdn.sanity.io/files/zmt58680/production/df9549da047b8e147bdd0ba98f0667e11d80c5c9.mp4');
    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      additionalOptions: (context) {
        return <OptionItem>[
          OptionItem(
            onTap: () => debugPrint('Option 1 pressed!'),
            iconData: Icons.chat,
            title: 'Option 1',
          ),
          OptionItem(
            onTap: () => debugPrint('Option 2 pressed!'),
            iconData: Icons.share,
            title: 'Option 2',
          ),
        ];
      },
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chewie Video Player"),
      ),
      body: chewieController != null
          ? Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Chewie(
                controller: chewieController!,
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}*/

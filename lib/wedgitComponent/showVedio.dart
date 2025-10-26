import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:video_player/video_player.dart';

enum MyEnum { one, two, three, four, five, six }

class ShowVideoWidget extends StatefulWidget {
  const ShowVideoWidget({super.key});

  @override
  State<ShowVideoWidget> createState() => _ShowVideoWidgetState();
}

class _ShowVideoWidgetState extends State<ShowVideoWidget> {
  late Future<List<VideoResponse>> _futureVideos;

  @override
  void initState() {
    super.initState();
    _futureVideos = fetchVideos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Videos")),
      body: FutureBuilder<List<VideoResponse>>(
        future: _futureVideos,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No videos found"));
          }

          final videos = snapshot.data!;
          return ListView.builder(
            itemCount: videos.length,
            itemBuilder: (context, index) {
              final video = videos[index];
              final videoUrl = video.links.first.linkUrl; // take first link
              return VideoPlayerWidget(videoUrl: videoUrl);
            },
          );
        },
      ),
    );
  }
}

Future<List<VideoResponse>> fetchVideos() async {
  final url = Uri.parse(
      "https://e-learn-v2.runasp.net/api/video/GetVedio?VedioFor=1&relatedBy=134");

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = jsonDecode(response.body);

    print("Playing video: ${jsonData}");
    return jsonData.map((e) => VideoResponse.fromJson(e)).toList();
  } else {
    throw Exception("Failed to load videos: ${response.statusCode}");
  }
}

class Link {
  final String linkUrl;
  final int linkId;

  Link({required this.linkUrl, required this.linkId});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      linkUrl: json["linkUrl"],
      linkId: json["linkId"],
    );
  }
}

class VideoResponse {
  final List<Link> links;
  final int vedioPermision;
  final int savedInType;

  VideoResponse({
    required this.links,
    required this.vedioPermision,
    required this.savedInType,
  });

  factory VideoResponse.fromJson(Map<String, dynamic> json) {
    return VideoResponse(
      links: (json["links"] as List)
          .map((linkJson) => Link.fromJson(linkJson))
          .toList(),
      vedioPermision: json["vedioPermision"],
      savedInType: json["savedInType"],
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerWidget({super.key, required this.videoUrl});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                VideoPlayer(_controller),
                VideoProgressIndicator(_controller, allowScrubbing: true),
                Center(
                  child: IconButton(
                    icon: Icon(
                      _controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                  ),
                )
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

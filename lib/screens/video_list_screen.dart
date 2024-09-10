import 'package:flutter/material.dart';

class VideoListScreen extends StatelessWidget {
  final String category;

  VideoListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    // قائمة الفيديوهات بناءً على الفئة المختارة
    List<Map<String, String>> videos = category == 'الكبار'
        ? [
            {"title": "فيديو تعليمي للكبار 1", "url": "http://example.com/video1"},
            {"title": "فيديو تعليمي للكبار 2", "url": "http://example.com/video2"},
          ]
        : [
            {"title": "فيديو تعليمي للصغار 1", "url": "http://example.com/video1"},
            {"title": "فيديو تعليمي للصغار 2", "url": "http://example.com/video2"},
          ];

    return Scaffold(
      appBar: AppBar(
        title: Text('فيديوهات $category'),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.play_circle_fill),
            title: Text(videos[index]['title']!),
            onTap: () {
              // يمكن تشغيل الفيديو هنا باستخدام شاشة مشغل الفيديو
              print("تشغيل ${videos[index]['title']}");
            },
          );
        },
      ),
    );
  }
}

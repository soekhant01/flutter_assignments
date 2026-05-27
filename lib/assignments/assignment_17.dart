import 'dart:ui';

import 'package:flutter/material.dart';

class CourseCurriculumViewer extends StatefulWidget {
  const CourseCurriculumViewer({super.key});

  @override
  State<CourseCurriculumViewer> createState() => _CourseCurriculumViewerState();
}

class _CourseCurriculumViewerState extends State<CourseCurriculumViewer> {
  final ScrollController _controller = ScrollController();

  final double _itemHeight = 100;
  final List<Map<String, dynamic>> _items = [
    {
      "id": 1,
      "courseId": 11.1,
      "description":
          "Understanding SingleChildScrollView and scroll bar in web",
    },
    {
      "id": 2,
      "courseId": 11.2,
      "description":
          "Understanding mouse, touch, and track behaviour in scrolling",
    },
    {
      "id": 3,

      "courseId": 11.3,

      "description": "Understanding the scrolling performance in list view ",
    },
    {
      "id": 4,

      "courseId": 11.4,

      "description": "Understanding the scroll controller and controlling",
    },
    {
      "id": 5,

      "courseId": 11.5,

      "description":
          "Understanding SingleChildScrollView and scroll bar in web",
    },
    {
      "id": 6,

      "courseId": 11.6,

      "description":
          "Understanding mouse, touch, and track behaviour in scrolling",
    },
    {
      "id": 7,

      "courseId": 11.7,

      "description": "Understanding the scrolling performance in list view ",
    },
    {
      "id": 8,

      "courseId": 11.8,

      "description": "Understanding the scroll controller and controlling",
    },
    {
      "id": 9,

      "courseId": 11.9,

      "description":
          "Understanding SingleChildScrollView and scroll bar in web",
    },
    {
      "id": 10,

      "courseId": 11.10,

      "description":
          "Understanding mouse, touch, and track behaviour in scrolling",
    },
    {
      "id": 11,

      "courseId": 11.11,

      "description": "Understanding the scrolling performance in list view ",
    },
    {
      "id": 12,

      "courseId": 11.12,

      "description": "Understanding the scroll controller and controlling",
    },
    {
      "id": 13,

      "courseId": 11.13,

      "description":
          "Understanding SingleChildScrollView and scroll bar in web",
    },
    {
      "id": 14,

      "courseId": 11.14,

      "description":
          "Understanding mouse, touch, and track behaviour in scrolling",
    },
    {
      "id": 15,

      "courseId": 11.15,

      "description": "Understanding the scrolling performance in list view ",
    },


    {
      "id": 16,

      "courseId": 11.16,

      "description": "Understanding the scrolling performance in list view ",
    },
    {
      "id": 17,

      "courseId": 11.17,

      "description": "Understanding the scroll controller and controlling",
    },
    {
      "id": 18,

      "courseId": 11.18,

      "description":
      "Understanding SingleChildScrollView and scroll bar in web",
    },
    {
      "id": 19,

      "courseId": 11.19,

      "description":
      "Understanding mouse, touch, and track behaviour in scrolling",
    },
    {
      "id": 20,

      "courseId": 11.20,

      "description": "Understanding the scrolling performance in list view ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
        },
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Reorderable List View")),
        body: Column(
          children: [
            Expanded(
              child: Scrollbar(
                controller: _controller,
                thumbVisibility: true,
                trackVisibility: true,
                child: ReorderableListView(
                  scrollController: _controller,
                  onReorder: (int oldIndex, int newIndex) {
                    final item = _items.removeAt(oldIndex);
                    if (newIndex > oldIndex) newIndex--;
                    setState(() {
                      _items.insert(newIndex, item);
                    });
                  },
                  buildDefaultDragHandles: false,
                  children: [for (int i = 0; i < _items.length; i++) _item(i)],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      _controller.animateTo(
                        0,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                    child: Text("Scroll To Top"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      _controller.animateTo(
                          _itemHeight * 2,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                    child: Text("Scroll To Lesson 11.3"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(int index) {
    Map item = _items[index];
    return SizedBox(
      height: _itemHeight,
      key: ValueKey(item['id'] ?? index),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Text("${item['courseId']}"),
              ),
              title: Text(item['description']),
              trailing: ReorderableDragStartListener(
                index: index,
                child: Icon(Icons.drag_handle),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/course_provider.dart';
import 'pages/course_listing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CourseProvider()),
      ],
      child: MaterialApp(
        title: 'Course Management App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CourseListingPage(),
        routes: {
          '/course-details': (context) => CourseDetailsPage(courseName: ModalRoute.of(context)!.settings.arguments as String),
        },
      ),
    );
  }
}

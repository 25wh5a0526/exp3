
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Orientation orientation =
        MediaQuery.of(context).orientation;

    String device;

    if (width < 600) {
      device = "Mobile";
    } else if (width < 1024) {
      device = "Tablet";
    } else {
      device = "Desktop";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Device: $device",
                style: const TextStyle(fontSize: 24)),
            Text("Width: $width"),
            Text("Orientation: $orientation"),
          ],
        ),
      ),
    );
  }
}

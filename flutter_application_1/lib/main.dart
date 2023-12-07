import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyQuillPage(),
    );
  }
}

class MyQuillPage extends StatefulWidget {
  @override
  _MyQuillPageState createState() => _MyQuillPageState();
}

class _MyQuillPageState extends State<MyQuillPage> {
  quill.QuillController _controller = quill.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Quill Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          margin: EdgeInsets.all(8), // Sesuaikan dengan kebutuhan Anda
          padding: EdgeInsets.all(8), // Sesuaikan dengan kebutuhan Anda
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
          ),
          child: quill.QuillEditor(
            controller: _controller,
            scrollController: ScrollController(), // Tambahkan controller sesuai kebutuhan Anda
            scrollable: true, // Sesuaikan dengan kebutuhan Anda
            autoFocus: true,
            readOnly: false,
            expands: false,
            padding: EdgeInsets.all(8),
            focusNode: FocusNode(), // Tambahkan focusNodecusNode
          ),
        ),
      ),
    );
  }
}

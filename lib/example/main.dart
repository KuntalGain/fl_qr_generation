import 'package:fl_qr_generation/src/fl_qr_generation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DynamicQRBuilder(),
    );
  }
}

class DynamicQRBuilder extends StatefulWidget {
  const DynamicQRBuilder({super.key});

  @override
  State<DynamicQRBuilder> createState() => _DynamicQRBuilderState();
}

class _DynamicQRBuilderState extends State<DynamicQRBuilder> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colorful QR Code Generation Example'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: QRGenerator.generate(
              link: _textEditingController.text,
              foregroundColor: Colors.purple,
              backgroundColor: Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Color(0XFFC2C2C2),
                  blurRadius: 2,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Your Link',
              ),
              onChanged: (text) {
                setState(() {
                  _textEditingController.text = text;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

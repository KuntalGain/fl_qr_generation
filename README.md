# fl_qr_generation

A Flutter plugin for QR code generation using the `qr_flutter` package.

## Overview

`fl_qr_generation` is a Flutter plugin that simplifies QR code generation in your Flutter applications. It utilizes the `qr_flutter` package under the hood, providing an easy-to-use interface for integrating QR code generation into your projects.

## Features

- Generate QR codes with customizable foreground and background colors.
- Support for changing QR code data dynamically.

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  fl_qr_generation: ^0.0.1
```

## Demo

[Demo](https://github.com/KuntalGain/fl_qr_generation/assets/101191826/4b463cbc-9854-4480-a3f3-097096379627)


## Example Code

```
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

```

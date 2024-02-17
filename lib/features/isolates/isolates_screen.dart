import 'package:flutter/material.dart';
import 'package:train_project/features/isolates/isolate_service.dart';

class IsolatesScreen extends StatelessWidget {
  const IsolatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<String>(
              future: IsolatesService.createSimpleIsolate(),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                return Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Text(snapshot.data ?? 'some error...'),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: StreamBuilder<String>(
              stream: IsolatesService.createIsolate(),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                return Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(snapshot.data ?? 'some error...'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

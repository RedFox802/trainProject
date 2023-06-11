import 'package:flutter/material.dart';
import 'package:train_project/root/streams/domain/streams_service.dart';

class StreamsScreen extends StatefulWidget {
  const StreamsScreen({Key? key}) : super(key: key);

  @override
  State<StreamsScreen> createState() => _StreamsScreenState();
}

class _StreamsScreenState extends State<StreamsScreen> {
  int streamControllerValue = 0;

  @override
  void initState() {
    super.initState();
    StreamsService.streamFromController.listen((event) {
      setState(() {
        streamControllerValue = event;
      });
    });
    StreamsService.initStreamFromController();
  }

  @override
  Widget build(BuildContext context) {
    const indent = SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Streams'),
      ),
      body: ListView(
        children: [
          indent,
          StreamBuilder(
            stream: StreamsService.createCycleStream(),
            builder: (context, snap) {
              return _StreamContainer._(
                currentValue: snap.data ?? 0,
                streamName: 'Stream from for',
              );
            },
          ),
          indent,
          StreamBuilder(
            stream: StreamsService.createPeriodicStream(),
            builder: (context, snap) {
              return _StreamContainer._(
                currentValue: snap.data ?? 0,
                streamName: 'Periodic stream',
              );
            },
          ),
          indent,
          StreamBuilder(
            stream: StreamsService.createStreamFromFuture(),
            builder: (context, snap) {
              return _StreamContainer._(
                currentValue: snap.data ?? 0,
                streamName: 'StreamFromFuture',
              );
            },
          ),
          indent,
          StreamBuilder(
            stream: StreamsService.createStreamFromFutures(),
            builder: (context, snap) {
              return _StreamContainer._(
                currentValue: snap.data ?? 0,
                streamName: 'StreamFromFutures',
              );
            },
          ),
          indent,
          StreamBuilder(
            stream: StreamsService.createStreamFromIterable(),
            builder: (context, snap) {
              return _StreamContainer._(
                currentValue: snap.data ?? 0,
                streamName: 'StreamFromFutures',
              );
            },
          ),
          indent,
          _StreamContainer._(
            currentValue: streamControllerValue,
            streamName: 'StreamFromController',
          ),
        ],
      ),
    );
  }
}

class _StreamContainer extends StatelessWidget {
  const _StreamContainer._({
    Key? key,
    required this.currentValue,
    required this.streamName,
  }) : super(key: key);

  final int currentValue;
  final String streamName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Align(child: Text(streamName)),
          Text('current value from stream: $currentValue')
        ],
      ),
    );
  }
}

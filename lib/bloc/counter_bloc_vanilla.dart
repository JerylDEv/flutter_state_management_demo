import 'dart:async';

/// This CounterEvent Class contains 2 types of Events
enum CounterEvent { increment, decrement }

class CounterBloc {
  /// Counter Variable to be updated
  int _counter = 0;

  /// Stream Setup to handle the CounterEvent data

  final StreamController<CounterEvent> _counterEventController =
      StreamController<CounterEvent>();

  Sink<CounterEvent> get _counterEventSink => _counterEventController.sink;

  // We expose the increment void function publicly
  void increment() {
    _counterEventSink.add(CounterEvent.increment);
  }

  // We expose the decrement void function publicly
  void decrement() {
    _counterEventSink.add(CounterEvent.decrement);
  }

  /// This void function updates the _counter State
  /// depending on the CounterEvent that is passed to it

  void _mapEventToState(CounterEvent event) {
    event == CounterEvent.increment ? _counter++ : _counter--;

    _counterStateSink.add(_counter);
  }

  /// This BloC Constructor, listens to the Counter Event triggered
  /// and updates the _counter State accordingly using the void function

  CounterBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

  /// Stream Setup to handle the CounterState data

  final StreamController<int> _counterStateController = StreamController<int>();

  Sink<int> get _counterStateSink => _counterStateController.sink;

  // We expose the Counter state stream publicly
  Stream<int> get counter => _counterStateController.stream;

  /// Disposes all the StreamControllers when it is not used
  dispose() {
    _counterEventController.close();
    _counterStateController.close();
  }
}

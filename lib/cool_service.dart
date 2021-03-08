import 'package:loggy/loggy.dart';

class ParentService with UiLoggy {
  final String name;

  ParentService({required this.name});
}

class CoolService extends ParentService {
  CoolService({required String name}) : super(name: name);

  void doSomething() {
    loggy.info('doSomething');
    print('[$name]: I do do something');
  }

  void saySomething() {
    loggy.info('saySomething');
    print('[$name]: I do say something');
  }

  void beSomething() {
    loggy.info('beSomething');
    print('[$name]: I am already something');
  }

  void talk() {
    loggy.info('talk');
    doSomething();
    saySomething();
    beSomething();
    print('.. how does that sound?');
  }
}

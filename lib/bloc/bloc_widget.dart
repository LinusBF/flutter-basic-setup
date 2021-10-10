import 'package:flutter/widgets.dart';
import 'package:flutter_basic/bloc/auth_bloc.dart';

class Bloc extends InheritedWidget {
  Bloc({Key? key, required Widget child, this.stale = false}) : super(key: key, child: child);
  final AuthBloc auth = AuthBloc();
  final bool stale;

  static Bloc of(BuildContext context) {
    final Bloc? result = context.dependOnInheritedWidgetOfExactType<Bloc>();
    assert(result != null, 'No Blocs found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Bloc old) {
    return stale;
  }
}

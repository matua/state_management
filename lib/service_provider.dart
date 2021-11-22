import 'package:get_it/get_it.dart';
import 'package:state_management/BLoC/CartBloc.dart';

class BlocService {
  CartBloc getBloc() {
    return CartBloc();
  }
}

GetIt bp = GetIt.I;

void setup() {
  return bp.registerLazySingleton<BlocService>(
    () => BlocService(),
  );
}

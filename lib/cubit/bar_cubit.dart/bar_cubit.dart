import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidebarx/sidebarx.dart';

class BarCubit extends Cubit<int> {
  BarCubit() : super(0);
  SidebarXController controller = SidebarXController(selectedIndex: 0);

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}

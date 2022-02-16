import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/pages/hotels/hotels_state.dart';

class HotelsCubit extends Cubit<HotelsState> {
  HotelsCubit() : super(HotelsState());

  // Future<void> loadInitialData() async {
  // 	final stableState = state;
  // 	try {
  // 	  emit(state.copyWith(isLoading: true));

  // 	  // TODO your code here

  // 	  emit(state.copyWith(isLoading: false));
  // 	} catch (error) {
  // 	  emit(state.copyWith(error: error.toString()));
  // 	  emit(stableState.copyWith(isLoading: false));
  // 	}
  // }
}

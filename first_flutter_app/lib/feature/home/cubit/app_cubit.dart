import 'package:english_words/english_words.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(current: WordPair.random(), favorites: []));

  static AppCubit get(context) => BlocProvider.of(context);

  void getNext() {
    emit(AppState(current: WordPair.random(), favorites: state.favorites));
  }

  void toggleFavorite() {
    if (state.favorites.contains(state.current)) {
      state.favorites.remove(state.current);
    } else {
      state.favorites.add(state.current);
    }
    emit(AppState(current: state.current, favorites: state.favorites));
  }

  void removeFavorite(WordPair pair) {
    state.favorites.remove(pair);
    emit(AppState(current: state.current, favorites: state.favorites));
  }
}

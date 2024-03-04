part of 'loader_bloc_adv_bloc.dart';

@freezed
class LoaderBlocAdvEvent with _$LoaderBlocAdvEvent {
  const factory LoaderBlocAdvEvent.toggleLoader() = _ToggleLoader;
}
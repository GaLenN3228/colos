// import 'dart:io';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:colos/repo/locale_storage/base_repo_locale_storage.dart';

part 'events.dart';
part 'parts/read.dart';
part 'parts/switch_to.dart';
part 'states.dart';

class BlocLocale extends Bloc<EventBlocLocale, StateBlocLocale> {
  BlocLocale({
    required this.repo,
    required String platformLocale,
  }) : super(StateLocaleInitial()) {
    _init(platformLocale);
    on<EventLocaleRead>(_read);
    on<EventLocaleSwitchTo>(_switchTo);
  }

  late final AppLocale defaultLocale;
  final BaseRepoLocaleStorage repo;

  AppLocale get locale {
    if (state is StateLocaleData) {
      return (state as StateLocaleData).locale;
    } else {
      return defaultLocale;
    }
  }

  Locale get uiLocale {
    if (state is StateLocaleData) {
      final localeName = (state as StateLocaleData).locale.name;
      return Locale(localeName);
    } else {
      return Locale(defaultLocale.name);
    }
  }

  Iterable<Locale> get supportedLocales {
    return AppLocale.values.map((e) => Locale(e.name));
  }

  void _init(String platformLocale) {
    String platformLocale = '';
    if (platformLocale.startsWith('ru')) {
      defaultLocale = AppLocale.ru;
    } else if (platformLocale.startsWith('en')) {
      defaultLocale = AppLocale.en;
    } else {
      defaultLocale = AppLocale.en;
    }
  }
}

enum AppLocale { en, ru }

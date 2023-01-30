# COLOS
![Logo](https://github.com/GaLenN3228/portfolio_preview/blob/main/assets/colos_logo.png?raw=true)

## About app

COLOS is an application for your shipments tracking. There are different roles in app such as a dispatch operator, regular user, and project client. The functionality for each role has been limited or expanded depending on the role. Each shipment can be tracked on a map with an accurate location calculation and movement history

## 🛠 App languages
Mobile app: Dart and flutter<br />
Backend: php<br />
Web app: Vue.js

## Features

- Multi-language support  [example](https://github.com/GaLenN3228/portfolio_preview/tree/main/examples/locale_bloc)
- Theme switching   [example](https://github.com/GaLenN3228/portfolio_preview/tree/main/examples/bloc_theme)
- Google maps polyline drawing and custom icons  [example](https://github.com/GaLenN3228/portfolio_preview/tree/main/examples/map)


## Multi-language support

Multi-language implementation

We used BLoC pattern for localization. 

```bash
   BlocBuilder<BlocLocale, StateBlocLocale>(
        bloc: widget.blocLocale,
        builder: (context, state) {
```

```bash
 return MaterialApp.router(
      supportedLocales: widget.blocLocale.supportedLocales,
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      locale: widget.blocLocale.uiLocale,
      localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
```

## Theme switching

Theme switching implementation the same as Multi-language implementation


```bash
    return BlocBuilder<BlocAppTheme, StateAppTheme>(
            bloc: widget.blocTheme,
            builder: (context, _state) {
              return InitWidget(
                blocTheme: widget.blocTheme,
```



<p align="center">
  <img src="https://github.com/GaLenN3228/portfolio_preview/blob/main/assets/theme_and_language.gif" alt="animated" />
</p>

## Google maps polyline drawing and custom icons

All Google maps integration you can find in [example](https://github.com/GaLenN3228/portfolio_preview/tree/main/examples/map)

Function to calculate middle point for map zoom level
```bash
    LatLng _countMiddlePoint(LatLng point1, LatLng point2) {
         final firstPoin = (point1.latitude + point2.latitude) / 2;
         final secondPoint = (point1.longitude + point2.longitude) / 2;
      return LatLng(firstPoin, secondPoint);
}
```

<p align="center">
  <img src="https://github.com/GaLenN3228/portfolio_preview/blob/main/assets/map_preview.gif" alt="animated" />
</p>


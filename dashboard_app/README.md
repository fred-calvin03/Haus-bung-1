# Hausübung 3 – Deployment einer Flutter-Web-App

## Persönliche Daten

Name: Frederic Calvin Nkengne

E-Mail: frederic.calvin.nkengne@mnd.thm.de

Matrikelnummer: 5572810

## Veröffentliche Flutter-App

dashboard_app

## Hosting Plattform

Firebase Hosting

## Öffentliche URL

[dashboard-app-calvin.web.app](https://dashboard-app-calvin.web.app)

## Lokaler Start

```bash
flutter pub get
flutter run -d chrome
```

## Deployment

```bash
flutter clean
flutter pub get
flutter build web
firebase deploy
```

Die Anwendung wurde als Flutter-Web-App mit Firebase Hosting veröffentlicht.

Der Web-Build wurde mit `flutter build web` erzeugt und anschließend über Firebase Hosting bereitgestellt. Die Anwendung ist über die öffentliche URL erreichbar und kann ohne lokale Entwicklungsumgebung genutzt werden.
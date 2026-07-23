# Haus-bung-1

Name: Frederic Calvin Nkengne
Email: frederic.calvin.nkengne@mnd.thm.de
Matrikelnummer:5572810
# Hausübung 2 – Dashboard App

## Verwendete Wetter-API
Open-Meteo

https://api.open-meteo.com/

## Dashboard-Konzept

Das Dashboard besteht aus zwei Bereichen:

### Wetter
Es werden aktuelle Wetterdaten über die Open-Meteo API angezeigt.

Angezeigte Wetterdaten:
- Temperatur
- Gefühlte Temperatur
- Luftfeuchtigkeit
- Windgeschwindigkeit

### Lern-Dashboard
Zusätzlich enthält das Dashboard einen Lernbereich mit:
- nächste Abgabe
- Lernzeit
- Fortschritt

## Projekt starten

```bash
cd dashboard_app
flutter run
```
# Hausübung 3 – Deployment einer Flutter-Web-App

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
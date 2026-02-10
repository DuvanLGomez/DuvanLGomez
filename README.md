# ChessDu

Repositorio inicial de **ChessDu**, una app móvil de entrenamiento de ajedrez pensada para ejecutarse en:

- Android (teléfono y tablet)
- iOS (iPhone y iPad)

La base está creada con **Flutter** para mantener una sola base de código multiplataforma.

## Estructura actual

- `lib/` aplicación base (tema, pantalla inicial responsive para tablet, módulos MVP)
- `assets/logo/chessdu_logo_concept.svg` logo inicial de ChessDu
- `docs/ChessDu_Guia_Paso_a_Paso.md` hoja de ruta funcional

## Requisitos

1. Instalar Flutter SDK (canal estable).
2. Instalar Android Studio (SDK Android + emulador).
3. En macOS, instalar Xcode para compilar iOS.

## Arranque rápido

```bash
flutter pub get
flutter run
```

Para elegir plataforma:

```bash
flutter run -d android
flutter run -d ios
```

## Build para distribución local

### Android APK

```bash
flutter build apk --release
```

### iOS (desde macOS)

```bash
flutter build ios --release
```

## Próximos pasos sugeridos

1. Reemplazar logo por versión final PNG/SVG y generar app icon/splash.
2. Integrar módulo de tácticas con ejercicios JSON/PGN.
3. Persistencia local con SQLite.
4. Agregar navegación por pestañas (Entrenar, Progreso, Perfil).

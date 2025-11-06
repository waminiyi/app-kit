# Configuration Firebase

Ce starter kit inclut une configuration Firebase placeholder. Pour utiliser Firebase avec votre propre projet, suivez ces étapes :

## Option 1 : Utiliser FlutterFire CLI (Recommandé)

1. Installez FlutterFire CLI :
```bash
flutter pub global activate flutterfire_cli
```

2. Configurez Firebase pour votre projet :
```bash
flutterfire configure
```

Cette commande va :
- Créer un nouveau projet Firebase ou sélectionner un existant
- Générer automatiquement le fichier `firebase_options.dart` avec vos vraies configurations
- Configurer les plateformes iOS et Android

## Option 2 : Configuration manuelle

### Android

1. Téléchargez `google-services.json` depuis votre console Firebase
2. Placez-le dans `android/app/google-services.json`
3. Ajoutez le plugin Google Services dans `android/app/build.gradle` :
```gradle
plugins {
    // ...existing plugins...
    id 'com.google.gms.google-services'
}
```

4. Ajoutez la dépendance dans `android/build.gradle` :
```gradle
buildscript {
    dependencies {
        // ...
        classpath 'com.google.gms:google-services:4.4.0'
    }
}
```

### iOS

1. Téléchargez `GoogleService-Info.plist` depuis votre console Firebase
2. Ajoutez-le à votre projet Xcode dans le dossier `Runner`

### Fichier firebase_options.dart

Remplacez les valeurs placeholder dans `lib/firebase_options.dart` avec vos vraies valeurs Firebase.

## Désactiver Firebase

Si vous ne souhaitez pas utiliser Firebase, vous pouvez :
1. Supprimer les dépendances Firebase de `pubspec.yaml`
2. Retirer le code d'initialisation Firebase dans `lib/main.dart`
3. Supprimer `lib/firebase_options.dart`

## Plus d'informations

Documentation officielle : https://firebase.flutter.dev/docs/overview


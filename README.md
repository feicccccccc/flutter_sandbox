# Set up flutter project
1. ```flutter create test_app```
2. Edit ```pubsepec.yaml``` file for the app package

    ```
    firebase_core: 1.18.0
    cloud_firestore: 3.1.18
    firebase_auth: 3.3.20
    ```

# Setup firebase
- backend for the project
## steps
1. Create a firebase project
2. follow firebase-flutter to install the package


    1. https://firebase.google.com/docs/flutter/setup?platform=web
    2. Install flutter fire cli

        https://firebase.google.com/docs/cli#sign-in-test-cli
        ```
        curl -sL https://firebase.tools | bash
        firebase login
        firebase projects:list
        ```
    3. Activate flutterfire_cli 
        
        ``` 
        dart pub global activate flutterfire_cli
        export PATH="$PATH":"$HOME/.pub-cache/bin"
        cd test_app

        # Warning: Do not commit the generated test_app/lib/firebase_options.dart which contain credentials.
        flutterfire configure
        ```

    4. Add the import in ```main.dart```

        ```
        import 'package:firebase_core/firebase_core.dart';
        import 'firebase_options.dart';
        ```
    5. Rebuild flutter project
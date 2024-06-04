## Installation

Add `whatsapp_status_editor:` to your **pubspec.yaml** dependencies then run `flutter pub get`

```
 dependencies:
  whatsapp_status_editor:
```

## Import

Add this line to import the package.
```
import 'package:whatsapp_status_editor/whatsapp_status_editor.dart';

```


## How to use

```dart
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const StatusEditor(),
      ),
    ).then((res) async {
      print(res);
      if (res != null) {
        print(res);
        filePath = res;
        setState(() {});
      }
    });
```

## Preview

<img src="https://raw.githubusercontent.com/Fahadnls/whatsapp_story_editor/main/presentation/Screenshot_1717503839.png" alt="drawing" height="500"/>


## Support me

<a href="https://www.buymeacoffee.com" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
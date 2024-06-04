## Installation

Add `whatsapp_story_editor:` to your **pubspec.yaml** dependencies then run `flutter pub get`

```
 dependencies:
  whatsapp_story_editor:
```

## Import

Add this line to import the package.
```
import 'package:whatsapp_story_editor/whatsapp_story_editor.dart';
```


## How to use

```dart
 await Navigator.push(
    context,
       MaterialPageRoute(
        builder: (context) => const StoryTextEditor(),
        ),).then((res) async {
            print(res);
             if (res != null) {
               print(res);
               filePath = res;
               setState(() {});
             }
               });
```



## Support me

<a href="https://www.buymeacoffee.com" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
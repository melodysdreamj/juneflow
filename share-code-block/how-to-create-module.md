# How to Create Module Package



### Create Module Template

1. After entering `june create`
2. After entering "3" to select the module template
3. Please choose a module name. The name should be in a format suitable for uploading to pub dev (lowercase and underscores)



### Understand About Module System

1. If you add //@add at the end of libraries in the dependency and devDependency sections of pubspec, those libraries will be installed together when applying this module to the project.
2. Under lib/util, you can only add files and such to folders that have the module name. If you remove the # at the very beginning inside the add.june file in this folder, all files in the folder will be duplicated when the module is installed.
3. For assets, you can only place files in pre-prepared folders. If you remove the # at the very beginning inside the add.june file in this folder, all files in the folder will be duplicated when the module is installed.
4. You can also add code blocks directly to pubspec.yaml. They can be added in the following form:

```yaml
#@add start
flutter_native_splash:
  color: "#ffffff"
  #background_image: "assets/module/flutter_native_splash_module/background.png"
  image: assets/module/flutter_native_splash_module/splash_icon.png

  color_dark: "#ffffff"
  ##background_image_dark: "assets/module/flutter_native_splash_module/dark-background.png"
  image_dark: assets/module/flutter_native_splash_module/splash_icon.png

  #android: false
  #ios: false
  #web: false

  #android_gravity: center
  #ios_content_mode: center
  #web_image_mode: center

  fullscreen: true
#@add end
```



{% hint style="info" %}
* If there are overlapping files between modules, the build itself will not proceed. Please be careful to ensure that files do not overlap with those of other modules when creating a module.
{% endhint %}



### Dedeply Module&#x20;

1. After uploading the module to GitHub,
2. After registering it in the `repository:` section of pubspec,
3. In the `description:`, you also provide detailed information about the module.
4. In the README.md, you also write the description of the module under "description here".
5. In the README.md, write how to use it under "Usage here". If not applicable, please delete the #Usage section.
6. Please register on pub dev by entering the following command.

```
dart pub publish
```

7. Please register the module created according to [this guide](https://github.com/melodysdreamj/juneflow/tree/contribution-guide).\
   \


\

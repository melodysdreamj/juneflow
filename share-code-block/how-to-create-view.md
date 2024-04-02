# How to Create View

### Create Module Template

1. After entering `june create-app`
2. After entering "4" to select the module template
3. Please choose a module name. The name should be in a format suitable for uploading to pub dev (lowercase and underscores)



### Understand About View System

1. If you add //@add at the end of libraries in the dependency and devDependency sections of pubspec, those libraries will be installed together when applying this module to the project.(Please add the necessary modules to devDependency.)
2. After creating a view in the folder that has the view name located in the following position(`lib/app/_/_/interaction`)
3. Please remove the # from the add.june file in that folder
4. For assets, you can only place files in pre-prepared folders. If you remove the # at the very beginning inside the add.june file in this folder, all files in the folder will be duplicated when the module is installed.



### Dedeply Module&#x20;

1. After uploading the module to GitHub,
2. After registering github url in the `repository:` section of pubspec,
3.  In the README.md, replace the \[execute file path here] section with the actual path of the executable file, for example,&#x20;

    ```bash
    lib/app/_/_/interaction/view.blueprint.popup/bottom_sheet/insta_menu_bottom_sheet/usage.dart
    ```
4. After launching Flutter and opening the view, take a screenshot to create an image. Then, follow the [next guide](https://gist.github.com/NawalJAhmed/2168f7659c08b6a033e7f6daf8db69a6) to generate the image's URL and place it in the Screenshots section of the README.md file as follows: !\[]\(insert the URL here).
5. Please register on pub dev by entering the following command.

```
dart pub publish
```


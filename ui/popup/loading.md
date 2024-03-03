# Loading

JuneFlut uses [EasyLoading](https://pub.dev/packages/flutter\_easyloading) for loading. Especially since loading does not use a ₩ but relies on a package, you can appropriately control it in loading.dart. [Here](https://github.com/jogboms/flutter\_spinkit#-showcase), you can check out many available animations.

## Create Loading

1. Look at the pages in the following path(`lib/app/_/_/interaction/view/popup/loading/loading.style1`) and copy the appropriate folder.&#x20;
2. After copying the folder, move it to the following location(`lib/app/_/_/interaction/view/_/_`) and paste it there. Rename the pasted folder to `loading.[name]`
3. After selecting the loading's folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace 'New' with your chosen page name in camel case.(ex. HelloWorld)
4. Please refer to [this](https://pub.dev/packages/flutter\_easyloading) and make the desired changes in loading.dart.



## How to Use

* In Android Studio, go to the code tab in usage.dart, right-click, and then click "Run 'usage.dart'".
* In another place (for example, where a toast should appear when a button is clicked), go to the appropriate location and paste the code for the 00 button from usage.dart.


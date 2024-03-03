# Dialog

Dialogs are views that mainly appear in the center, such as alert windows or selection windows. It is composed of [`Components`](../componenet/), and you can create it as desired.

## Create Bottom Sheet

1. Look at the pages in the following path(`lib/app/_/_/interaction/view/popup/dialog/dialog._`) and copy the appropriate folder.&#x20;
2. After copying the folder, move it to the following location(`lib/app/_/_/interaction/view/_/_`) and paste it there. Rename the pasted folder to `dialog.[name]`
3. After selecting the dialog's folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace 'New' with your chosen page name in camel case.(ex. HelloWorld)
4. Replace all widgets with your desired UI elements to create the interface you want.



## How to Use

* In Android Studio, go to the code tab in usage.dart, right-click, and then click "Run 'usage.dart'".
* In another place (for example, where a dialog should appear when a button is clicked), go to the appropriate location and paste the code for the 00 button from usage.dart.

# Drawer

A drawer is a type of page where menus appear on the side and the existing screen slides to the side according to a set animation.

You can create pages internally or pull in separate pages. However, only the page type `page._loading_view_ready` is possible because the screen needs to open without loading first.



## Create Drawer

1. Look at the pages in the following path(`lib/app/_/_/interaction/view/pages/drawer/pages.drawer._`) and copy the appropriate folder.&#x20;
2. After copying the folder, move it to the following location(`lib/app/_/_/interaction/view/_/_`) and paste it there. Rename the pasted folder to `pages.drawer.[name]`
3. After selecting the drawer's folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace 'New' with your chosen page name in camel case.(ex. HelloWorld)
4. In `view.dart`, you can bring in appropriate screens of type page.\_loading\_view\_ready for menuScreen and mainScreen, or you can create them yourself.



## How to Use

* In Android Studio, go to the code tab in usage.dart, right-click, and then click "Run 'usage.dart'".
* In another place (for example, where a bottom sheet should appear when a button is clicked), go to the appropriate location and paste the code for the 00 button from usage.dart.


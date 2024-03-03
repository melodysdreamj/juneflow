# Botton Navigation

Bottom navigation is a collection of pages where the screen changes based on what you click, with navigation located at the bottom.

You can create pages internally or pull in separate pages. However, only the page type `page._loading_view_ready` is possible because the screen needs to open without loading first.



## Create Bottom Navigation

1. Look at the pages in the following path(`lib/app/_/_/interaction/view/pages/bottom_navigation/pages.bottom_navigation.index_stack`) and copy the appropriate folder.&#x20;
2. After copying the folder, move it to the following location(`lib/app/_/_/interaction/view/_/_`) and paste it there. Rename the pasted folder to `pages.bottom_navigation.[name]`
3. After selecting the botton navigation's folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace 'New' with your chosen page name in camel case.(ex. HelloWorld)
4. You can bring in external screens inside the \[] list, or you can create them inside a folder and bring them onto the screen.

```

<Widget>[
          //////////////////////////////////////////////////////////////////
          New1View(params: New1Params(),),
          New2View(params: New2Params(),),
          New3View(params: New3Params(),),
          New4View(params: New4Params(),),
          //////////////////////////////////////////////////////////////////
        ].elementAt(_selectedIndex)
```



## How to Use

* In Android Studio, go to the code tab in usage.dart, right-click, and then click "Run 'usage.dart'".
* In another place (for example, where a bottom sheet should appear when a button is clicked), go to the appropriate location and paste the code for the 00 button from usage.dart.



## Type

* pages.bottom\_navigation.\_ : This is the basic form of bottom navigation.
* pages.bottom\_navigation.index\_stack : This type is made using an IndexedStack for bottom navigation. In this type, as soon as the bottom navigation is opened, all pages are internally opened, and each screen retains its information without losing it when switching between screens, making it the primary type used.






# Tapbar

The tab bar is a type of page that features screens moving with animations when you press buttons usually located at the top. It should be possible to move through slides and easily identify the current location through the top buttons.

You can create pages internally or pull in separate pages. However, only the page type `page._loading_view_ready` is possible because the screen needs to open without loading first.



## Create Tapbar

1. Look at the pages in the following path(`lib/app/_/_/interaction/view/pages/tapbar/pages.tapbar._`) and copy the appropriate folder.&#x20;
2. After copying the folder, move it to the following location(`lib/app/_/_/interaction/view/_/_`) and paste it there. Rename the pasted folder to `pages.tapbar.[name]`
3. After selecting the tapbar's folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace 'New' with your chosen page name in camel case.(ex. HelloWorld)
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




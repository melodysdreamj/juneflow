# Without\_navigation\_bar

Sometimes, multiple screens need to be gathered in a single stack without a separate navigation bar. This type was created for such cases, and screens can be easily switched through the VM (ViewModel).

You can create pages internally or pull in separate pages. However, only the page type `page._loading_view_ready` is possible because the screen needs to open without loading first.



## Create Without\_navigation\_bar

1. Look at the pages in the following path(`lib/app/_/_/interaction/view/pages/without_navigation_bar/pages.without_navigation_bar._`) and copy the appropriate folder.&#x20;
2. After copying the folder, move it to the following location(`lib/app/_/_/interaction/view/_/_`) and paste it there. Rename the pasted folder to `pages.tapbar.[name]`
3. After selecting the folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace 'New' with your chosen page name in camel case.(ex. HelloWorld)
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

5. You can change the screen using the changeScreenAction() function in action/change\_screen.dart within the VM folder.



## How to Use

* In Android Studio, go to the code tab in usage.dart, right-click, and then click "Run 'usage.dart'".
* In another place (for example, where a bottom sheet should appear when a button is clicked), go to the appropriate location and paste the code for the 00 button from usage.dart.




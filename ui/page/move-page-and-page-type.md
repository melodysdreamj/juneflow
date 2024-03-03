---
description: This explains the page navigation system within JuneFlut architecture
---

# Move Page & Page Type

## Move Page

1. If there aren't two pages already created, [refer to the following](broken-reference) to create two pages.(Let's assume we have Page1 and Page2 for this example.)
2. To move from Page1 to Page2, insert the following code:

```
Page2Navigator(Page2Params()).movePage(context);
```



### Page Types

#### 1. page

This type means that it performs the necessary preparations (such as network communication, local database communication, delivering information to the view model) before the page moves. Once ready, the page begins to move. For a brief moment during preparation, the page becomes unresponsive to touch (to prevent misclicks, etc.).

`include movePage,movePageOff,movePageOffAll`&#x20;

#### 2. page.\_loading\_view\_ready

This type allows the page to move immediately, first showing a loading view and then starting the preparation work (such as network communication, local database communication, delivering information to the view model). Once the page is ready, it switches back to the original page that was created.

`include movePageWithLoadingView,movePageOffWithLoadingView,movePageOffAllWithLoadingView, View`&#x20;

### Page Navigation Types

* The types of page transitions include&#x20;
  * `movePage`
  * `movePageOff`
  * `movePageOffAll`
  * `movePageWithLoadingView`
  * `movePageOffWithLoadingView`
  * `movePageOffAllWithLoadingView`
* `movePage` and `movePageWithLoadingView` allow you to return to the previous page when the back button is clicked. These are commonly used.
* `movePageOff` and `movePageOffWithLoadingView` make the immediate previous page disappear, and clicking back takes you to the page before the last one.
* `movePageOffAll` and `movePageOffAllWithLoadingView` delete all previous pages and exit the app when the back button is pressed. This is mainly used when moving from the login to the homepage.
* `movePage`, `movePageOff`, and `movePageOffAll` execute page preparation asynchronously through `page/cycle/ready_view.dart` and the page transition occurs only after this preparation is complete. The transition does not happen until the page is ready. These are used when utilizing features like hero actions.
* `movePageWithLoadingView`, `movePageOffWithLoadingView`, and `movePageOffAllWithLoadingView` transition immediately, initially displaying the loading component from `page/config/loading.dart`. After the page preparation is completed in `page/cycle/ready_view.dart`, it then switches to and displays `page/view.dart`. This approach is used when you need to transition to the page immediately and load content while displaying a skeleton screen.

### Page Transition Animation

* There are various animation options available for page transitions.
* You can refer to [this](https://pub.dev/packages/page\_transition#types-of-transitions) place to see what animations are available.

You can specify page transition options like this when moving between pages.

```dart
NewNavigator(NewParams())
                  .movePage(context, transition: Transition.[animation name]);
```

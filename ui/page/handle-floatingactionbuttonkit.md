---
description: >-
  In JuneFlut, the floating action button has been enhanced for efficient
  operation. This button is visible only in debug mode and disappears in release
  mode. If your UI requires a floating ac
---

# Handle FloatingActionButtonKit

{% embed url="https://youtu.be/mCc3uHogJNs" %}

1. When the page is first created, the code for the floating button is as follows.

```dart
floatingActionButton: FloatingActionButtonKit(),
```



2.  If you have code you want to execute, create it in the following form. Then, click the floating button and press 1.

    ```dart
    floatingActionButton: FloatingActionButtonKit(
      button1: (context){
        // write your code here
      },
    ),
    ```
3. If you have more than two pieces of code you want to test, create them in the following format. After clicking the floating button, click 'note' and then select the button you have noted. You can add up to 99 pieces of code this way.

```dart
floatingActionButton: FloatingActionButtonKit(
  button1: (context){},
  button2: (context){},
  button00: (context){
    // write your code here
  },
),
```

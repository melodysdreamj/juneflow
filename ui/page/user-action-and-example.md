# User Action & Example

The User Action page is where you create all possible actions a user can perform on the screen.

The reason for separating user actions from the view in a separate file is to adhere to the principle of separation of concerns. By having `view.dart` handle only the pure view aspects and gathering actions resulting from user behavior in the `user_action` folder, it becomes easier to examine the page later, clearly distinguishing between the view and the actions.

## Example

{% embed url="https://youtu.be/hLP1nuwb884" %}

Let's assume there is a view like the following.

```dart
class V extends StatefulWidget {
  const V({super.key, this.heroKey, this.tag, required this.params});

  final Key? heroKey;
  final String? tag;
  final NewParams params;

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewVM>(
      tag: widget.tag,
      autoRemove: false,
      builder: (vmNew) => SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: MaterialButton(
            onPressed: () {
              log("pressed button");
            },
            child: Text("Increase Count Button"),
          ).center(),
          floatingActionButton: FloatingActionButtonKit(),
        ),
      ),
    );
  }
}
```



In this scenario, the anticipated user action would be clicking the 'new button'.&#x20;

1. In such a case, you declare the user action. Duplicate `page/_/user_action/_new.dart` and name the file in snake case based on the user's action (e.g., `click_counting_button.dart`).
2. Then, in the respective function, change the `writeHereName` part to the file name in lower camel case (e.g., `clickNewButton`).
3. Then, inside that function, you can proceed with the necessary tasks.'

{% hint style="info" %}
If you need to update a variable in the ViewModel, you can declare a separate action in the ViewModel and perform the update there.
{% endhint %}

\

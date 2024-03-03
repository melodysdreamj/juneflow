---
description: >-
  In JuneFlut Architecture, the ViewModel uses GetX's GetBuilder to update the
  screen.
---

# ViewModel & Example

## vm/\_/vm.dart

Declare the ViewModel's variables here. In Jun's architecture, instead of using stateful variables, they are primarily placed here.



## vm/\_/action

This is where you declare all actions that update the ViewModel's variables. The action name should describe how the screen changes.



## vm/\_/action/ready\_vm.dart

This function runs synchronously and must complete before the page opens. It is used for tasks that must be done before rendering the page, such as fetching data from a database, after which it updates the variables in the ViewModel.



## Example

For example, let's assume that in the basic app, a number increases every time a button is pressed.

1. irst, you need to create `click_counting_button.dart` in the `page/_/user_action` directory because it's necessary to handle the user's click action.
2. In the function name, replace `writeHereName` with the action name in lower camel case.(ex. `increaseCountAction`)
3. Then, insert the action function into the desired location, such as the button's `onTap` or `onPress`, etc.
4. Then, declare a variable in `vm.dart` like `int count = 0;`
5. After that, duplicate `vm/action/_new.dart`, rename it to `increase_count_action.dart`, and insert the code to update the variable. The code would look something like this:

```dart
increaseCountAction({String? tag}) {
  NewVM viewModel = NewVMUtil.vm(tag: tag);

  viewModel.count = viewModel.count + 1;

  viewModel.util.notify();
}

```

4. By adding the action to `user_action/click_counting_button.dart` as follows, the number will increase when the user clicks. This separation of view, user action, and ViewModel update action significantly improves maintainability.

```dart

clickCountingButtonUserAction(BuildContext context, String? tag) {
  increaseCountAction(tag: tag);
}
```

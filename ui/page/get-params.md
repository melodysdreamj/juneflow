# Get Params

{% embed url="https://youtu.be/Mi2k8ka6SE8" %}

## Parameter Declaration Method

1.  Parameters are typically found in `page/_/config/params.dart` and usually have the following form:\


    ```dart
    class NewParams {
      late BuildContext context;

      NewParams();
    }
    ```


2. For example, if you need to receive a string variable named `student_name` when the page opens, you can create it as follows:

```dart
class NewParams {
  late BuildContext context;
  late String studentName;

  NewParams({required this.studentName});
}

```

1. Then, when navigating to that page, you can pass the variable as follows:

```dart
NewNavigator(NewParams(studentName: "june")).movePage(context);
```

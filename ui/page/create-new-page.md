---
description: This explains how to create a new page.
---

# Create New Page

{% embed url="https://youtu.be/gIQQIRKIRRQ" %}

1. Look at the pages in the following path(`lib/app/_/_/interaction/view/page/page/page._loading_view_ready`) and copy the appropriate folder.&#x20;

{% hint style="info" %}
If you want to know what each page looks like before choosing, open `_/page.[type]/_/view.dart` of the desired page in Android Studio. Right-click in the code window and select Run 'View.dart' to immediately see what the page looks like.
{% endhint %}

2. After copying the folder, move it to the following location(`lib/app/_/_/interaction/view/_/_`) and paste it there. Rename the pasted folder to `page.[page_name]`
3. After selecting the page's folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace 'New' with your chosen page name in camel case.(ex. PageName)
4. Replace all SafeArea widgets with your desired UI elements to create the interface you want.

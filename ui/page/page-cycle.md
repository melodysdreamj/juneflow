---
description: >-
  The page cycle is a sophisticated system that manages the series of processes
  involving a page opening, preparing, and eventually being destroyed.
---

# Page Cycle

{% embed url="https://youtu.be/F2lQZDC2NkU" %}

The cycle consists of `after_first_layout`, `dispose`, `init_state` and `ready_view`.

### after\_first\_layout

This is a function called immediately after the layout build is complete and the context is created. When you need the context of a specific page, you can insert the necessary code into this function.

### dispose

This is a function invoked when the page is about to close. If you need to release various resources or perform any actions upon closing the page, you can include them here.

### init\_state

`init_state` is a function that is called when the state is initially set in the Flutter system.

### ready\_view

`ready_view` is a function called before the page loads. It operates asynchronously, for tasks like fetching information from a database or a server. The page system automatically waits until this function completes. It typically involves receiving parameters, invoking use cases, and then placing the resulting values into the view model.

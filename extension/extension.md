---
description: How to Create an Extension in JuneFlutter.
---

# Extension

*   What's the Difference Between a JuneFlutter Extension and a Plugin on Pub.dev?

    \
    Flutter plugins are thoughtfully designed to freely add a variety of features, but applying them to a project can often be challenging. For example, if you want to apply FCM to your project, you need to apply Firebase core first and then create an FCM listener at the startup stage. Additionally, you have to set up a separate isolate function for the background. There are also various codes that need to be inserted at different stages, and if not organized properly, the project can easily become legacy. JuneFlutter's Extension, on the other hand, is designed to insert code on a robust architecture, making it much easier to add advanced features.



## Create Extension Guide

1. First, create a new project by clicking on 'Create Template' in [the following repository](https://github.com/melodysdreamj/JuneFlutter).
2. Please feel free to write without being bound by a specific format, but make sure to include Compatible Template, Dependency Extensions, and Introduction. If you need a basic structure, copy the markdown block below and paste it into Readme.md before proceeding.

```markdown
# New Extensions

## Compatible Template
- [JuneFlut](https://github.com/melodysdreamj/JuneFlut)
- [JuneFlut-Web](https://github.com/melodysdreamj/JuneFlut-Web)

## Dependency Extensions
none

## Introduction
Please explain about this extension.

## Install Extensions
Please write detailed instructions on how to install the extension.

## Usage
Please provide instructions on how to use this extension or link to a page where users can learn how to use it.
```

3. After inserting the intended codes into the project you created and ensuring they function correctly, separate the code into files where applicable and place them in the extension folder according to the structure. For parts of the code that cannot be separated into files, provide detailed explanations in the Install Extensions section of the readme. (e.g., ready.dart, start\_app.dart)
4. In the Compatible Template section, please list the templates that this extension can be installed on.
5. In the Dependency Extensions section, if there are any extensions that need to be installed before using this extension, please list those extensions with their GitHub links.
6. In the Introduction section, please introduce this extension.
7. In the Install Extensions section, please provide detailed instructions on how to install this extension. If it requires more than just copying and pasting, like inserting specific code into certain files, please include those details as well.
8. In the Usage section, please explain how to use this extension after it has been installed.
9. Afterward, fork the[ original GitHub repository](https://github.com/melodysdreamj/JuneFlutter) (not just creating a template, but forking), then add your extension to the table in the Extension section, and submit a pull request.








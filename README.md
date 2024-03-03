---
description: "\bJuneArchitecture is a comprehensive solution architecture proposed to solve problems that could not be overcome with packages or basic Flutter features encountered during long-term Flutter"
---

# Introduce

Below are the motivations for creating JuneArchitecture and the solutions it provides.



## Motivation

While mentoring a team at the Code in Songdo Side Project event, organized by Flutter Songdo, I was discussing the architecture that I had developed and frequently used. During this, one of the team members expressed the need for a document. This led me to create a simple document, which has now evolved into what we have here today. :)



## Page,Components

#### Problem

1. For pages and components, views and user action events, view cycles, loading views, view models, and view model actions should be strictly separated. However, in reality, all these elements often get mixed into one or two files, resulting in code that is difficult to understand.
2. To solve all these issues, one might get drawn into very complex patterns, making the creation of even a single page require too much time and concentration, and later, it becomes hard to grasp the flow.
3. The reason it's hard to package these solutions is that each page has different requirements and coding. The moment you package it, by defining the problems it can solve, it becomes unsuitable for most pages that have a wide variety of requirements.

#### Solution

1. In the case of pages and components, the structure has been made to maintain an extremely intuitive separation while strictly separating views, user action events, view cycles, loading views, view models, and view model actions, making it very easy to add or remove pages. By doing so, it allows all necessary parts related to a page to be immediately and easily understood at a glance, and with the logics being separated, it dramatically improves maintenance.
2. By not restricting it to a separate package, users can easily customize it.

***

## UI coding style

#### Problem

1. Most Flutter developers develop pages, components, bottom sheets, dialogs, toasts, snack bars, tooltips, and many other types of widgets using different methods and structures. This means that the knowledge required for each type increases, making maintenance more difficult.
2. Many developers use customized view packages for various UI requirements, but since design falls within the realm of art and can differ even slightly from one app to another, they often encounter situations where these customized view packages do not allow for the desired level of customization. Using view packages often means having to compromise on a significant portion of one's design aspirations.

#### Solution

1. By providing a completely identical view structure for most widgets (such as pages, components, bottom sheets, dialogs, popups, toasts, snack bars, etc., with more to be added), a uniform UI coding style has been realized, which has reduced maintenance costs and increased productivity.

***

## Database,DTO

#### Problem

1. Many databases communicate with Flutter using map objects or even strings, which means that you have to convert the objects to the appropriate types before saving them, and then convert those types back to objects when retrieving them. This implies that changing the columns of a table requires more code, and more code means more mistakes and time consumption.
2. There was disappointment with the types of data. Each database supports different data types, and most are limited to just a few. In development, there are moments when you need columns that are not just strings, integers, or floats, but also lists, Enums, or even columns that use another model as their data type or columns that are lists of another model. Developing additional features to match the database each time can be seen as reinventing the wheel at every moment.
3. There was dissatisfaction with the complexity of communication. For example, when using Dynamic Links or FCM, developers must each time develop ways to handle a kind of new variables. For instance, when sending a data message via FCM, the developer has to decide which variables to send from the client to the server, gather the necessary information to transmit, and then the server receives these variables and accesses a database like Firestore to gather the required verification and information. After that, it packages the necessary variables to send through FCM, and Flutter has to reinterpret the arrived FCM to reflect it in the local database and view model. This process can be said to violate the principle of not reinventing the wheel.

#### Solution

1. By pre-installing all the code required for the database to communicate with Flutter and convert objects, and by offering a way to easily add or delete them, productivity has been greatly increased.
2. By pre-coding types that are not available in the database for easy use, and by not restricting this to a package, it allows for the use of all familiar data types across all kinds of databases (even supporting list types of other data classes!).
3. By laying down a database infrastructure with the same structure and usage across numerous frameworks, from Dart to TypeScript and Python, it has been made easy to use and extremely intuitive, eliminating the need for separate development for communicati

***

## Various dependency

#### Problem

1. Many packages and codes need to be prepared when the app starts (at three different times depending on the timing) and at certain points. These packages can complicate the app's architecture and often become legacy if not planned in advance.

#### Solution

1. By proposing a single architecture that solves all these problems, you can proceed with a project that is intuitive, easy to maintain, and has a unified form.

***

This document describes clear methods for creating apps with JuneArchitecture. Please take a look at each one slowly and wish you successful app development.

\





# Componenet Type

There are two types of components: component and component.\_no\_ready.

* `component` opens with a loading view first, preparing the component in ready\_view.dart, and then the component view opens once it's ready.
* `component._no_ready` opens the component immediately without a preparation process (no loading), constructing the screen instantly with parameters. It's mainly used in cases where loading is not feasible, such as when the widget size needs to be fixed.

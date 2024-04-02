# How to Create View

### Create Module Template

1. After entering `june create-app`
2. After entering "4" to select the module template
3. Please choose a module name. The name should be in a format suitable for uploading to pub dev (lowercase and underscores)



### Understand About View System

1. If you add //@add at the end of libraries in the dependency and devDependency sections of pubspec, those libraries will be installed together when applying this module to the project.(Please add the necessary modules to devDependency.)
2. After creating a view in the folder that has the view name located in the following position(`lib/app/_/_/interaction`)
3. Please remove the # from the add.june file in that folder
4. For assets, you can only place files in pre-prepared folders. If you remove the # at the very beginning inside the add.june file in this folder, all files in the folder will be duplicated when the module is installed.

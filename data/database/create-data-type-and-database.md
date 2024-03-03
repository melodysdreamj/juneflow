# Create Data Type & Database

JuneFlut is designed to create all databases simultaneously when defining data types. The available types are as follows: String (S), Integer (I), Boolean (B), Real (R), List type (L), Other data type (C), List of another data type (J), Enum type (E).



1. Look at the pages in the following path(`lib/blueprint/database/new`) and copy the appropriate folder.&#x20;
2. Paste it in the same folder location(lib/blueprint/database). At this time, name the folder after the data type.&#x20;

{% hint style="info" %}
The reason for pasting it into the blueprint folder is to first synchronize everything from the repo to the database within the blueprint, before moving it to the app folder.
{% endhint %}

3. After selecting the folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace 'New' with your chosen page name in camel case.(ex. New -> HelloWorld)
4. Change the folder name at the following location to snake case(ex. new -> hello\_world).

* data/repository/database/new
* data/source/database/new
* domain/entity/model/new&#x20;
* domain/repository/database/new

5. After selecting the folder in the navigation bar, open the path search & replace (Shift+Command+R on Mac) and replace '/new/' with your chosen page name in snack case.(ex. /new/ -> /hellow\_world/)
6. Keep only the necessary databases and delete the rest.

* In JuneFlut, there are a few local databases like sqflite and get\_storage, and if you equip it with a server extensions, it may also include firestore or pockerbase. Decide which databases) to use in the app and delete the rest, excluding the chosen ones.

7. Create the data type in detail.
   1. Go to domain/entity/model/\[name]/model.dart, for example, in the case of a string column named "nick\_name". Go to S000 and change it to uppercase CamelCase (e.g., NickName), but don't change it directly.
   2. Instead, click on the blueprint/database/\[name] folder in the navigation bar, open the Find & Replace(Shift+Command+R on Mac) window, search for S000 (in order), and then change it (e.g., S000 -> NickName).
   3. Change all columns in the same way.
   4. Then, search for the columns you created using the partial search again(Shift+Command+F on Mac), and one by one, release the lock on each column.
8. Copy the created folder (lib/blueprint/database/\[name]) and paste it into the next location (lib/app/_/_) to complete the process.


# Database

lego-flutter's default storage mainly deals with local databases. Separate settings are required to use server databases, so please refer to the relevant Lego for databases related to backend servers (such as Firebase, PocketBase, Appwrite, etc.).

* All databases are automatically created along with class types. Therefore, once you define the model type, the database automatically follows this structure.
* It is designed to handle the following types in all databases (including local and server): String (S), Integer (I), Boolean (B), Real (R), List type (L), Other data type (C), List of another data type (J), Enum type (E).
* It is integrated with Clean Architecture and provides repositories across the domain and data layers. You can comfortably use these provided repositories in use cases.

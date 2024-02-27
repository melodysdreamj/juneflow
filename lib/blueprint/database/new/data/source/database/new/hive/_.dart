import '../../../../../../../../util/start_app.dart';
import '../../../../../domain/entity/model/new/model.dart';

class NewModelHive {
  NewModel? get() {
    String? json = hiveBox.get('NewModel');
    if (json == null) return null;

    return NewModel.fromString(json);
  }

  upsert(NewModel obj) {
    String json = obj.toString();
    hiveBox.put('NewModel', json);
  }

  deleteAll() {
    hiveBox.delete('NewModel');
  }
}

import 'package:dependency_module/dependency_module.dart';

abstract class IRemoteDatabaseService {
  Future<QuerySnapshot<Map<String, dynamic>>> getCollection(String collection);
  Future<DocumentSnapshot<Map<String, dynamic>>> getDocument(String collection, String document);
  Future<void> set(String collection, String document, Map<String, dynamic> object);
}

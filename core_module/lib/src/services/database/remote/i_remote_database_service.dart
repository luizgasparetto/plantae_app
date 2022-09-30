abstract class IRemoteDatabaseService {
  Future<List<Map<String, dynamic>>> getCollection(String collection);
  Future<List<Map<String, dynamic>>> getDocument(String collection, String document);
  Future<void> set(String collection, String document, Map<String, dynamic> object);
}

import 'package:dependency_module/dependency_module.dart';
import 'package:plantae/app/core/errors/database_error.dart';
import 'package:plantae/app/core/services/database/remote/i_remote_database_service.dart';

class FirestoreRemoteDatabaseServiceImpl implements IRemoteDatabaseService {
  final FirebaseFirestore firestore;

  const FirestoreRemoteDatabaseServiceImpl(this.firestore);

  @override
  Future<List<Map<String, dynamic>>> getCollection(String collection) async {
    try {
      final response = await firestore.collection(collection).get();

      return response.docs.map((e) => e.data()).toList();
    } on FirebaseException catch (error) {
      throw DatabaseError(message: 'Get Collection Firestore Error', stackTrace: error.stackTrace!);
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getDocument(String collection, String document) async {
    try {
      final response = await firestore.collection(collection).doc(document).get();

      return response.data() as List<Map<String, dynamic>>;
    } on FirebaseException catch (error) {
      throw DatabaseError(message: 'Get Document Firestore Error', stackTrace: error.stackTrace!);
    }
  }

  @override
  Future<void> set(String collection, String document, Map<String, dynamic> object) async {
    try {
      return await firestore.collection(collection).doc(document).set(object);
    } on FirebaseException catch (error) {
      throw DatabaseError(message: 'Set Firestore Error', stackTrace: error.stackTrace!);
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreUserService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // users koleksiyonu referansı
  CollectionReference get _users => _firestore.collection('users');

  // Yeni kullanıcı ekle
  Future<void> addUser({
    required String uid,
    required String email,
    String displayName = '',
    String role = 'freelancer',
  }) async {
    final doc = _users.doc(uid);
    final snapshot = await doc.get();

    if (!snapshot.exists) {
      await doc.set({
        'email': email,
        'displayName': displayName,
        'role': role,
        'createdAt': FieldValue.serverTimestamp(),
      });
    }
  }

  // UID ile kullanıcıyı getir
  Future<DocumentSnapshot> getUserById(String uid) {
    return _users.doc(uid).get();
  }

  // Kullanıcı güncelle
  Future<void> updateUser(String uid, Map<String, dynamic> data) {
    return _users.doc(uid).update(data);
  }

  // Kullanıcıyı sil (isteğe bağlı)
  Future<void> deleteUser(String uid) {
    return _users.doc(uid).delete();
  }
}

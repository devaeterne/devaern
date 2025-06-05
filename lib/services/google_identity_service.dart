import 'package:firebase_auth/firebase_auth.dart';

class GoogleIdentityService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInWithIdToken(String idToken) async {
    final credential = GoogleAuthProvider.credential(idToken: idToken);

    final result = await _auth.signInWithCredential(credential);
    return result.user;
  }
}

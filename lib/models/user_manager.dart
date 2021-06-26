import 'package:firebase_auth/firebase_auth.dart';
import 'package:loja_virtual/models/usuario.dart';

class UserManager {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signIn(Usuario usuario) async {
    try {
      final UserCredential userCredential =
          await auth.signInWithEmailAndPassword(
              email: usuario.email, password: usuario.password);

      // ignore: avoid_print
      print(userCredential.user!.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // ignore: avoid_print
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        // ignore: avoid_print
        print('Wrong password provided for that user.');
      }
    }
  }
}

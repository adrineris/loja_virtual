import 'package:firebase_auth/firebase_auth.dart';
import 'package:loja_virtual/helpers/firebase_errors.dart';
import 'package:loja_virtual/models/usuario.dart';

class UserManager {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signIn(
      Usuario usuario, Function onFail, Function onSucces) async {
    try {
      final UserCredential userCredential =
          await auth.signInWithEmailAndPassword(
              email: usuario.email, password: usuario.password);

      // ignore: avoid_print

    } on FirebaseAuthException catch (e) {
      print(e.code);
      onFail(getErrorString(e.code));
      /* if (e.code == 'user-not-found') {
        // ignore: avoid_print
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        // ignore: avoid_print
        print('Wrong password provided for that user.');
      }*/
    }
  }
}

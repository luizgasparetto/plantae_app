import 'package:app_module/app/modules/auth/submodules/login/domain/params/login_with_email_params.dart';
import 'package:app_module/app/modules/auth/submodules/register/domain/params/register_with_email_params.dart';
import 'package:core_module/core.dart';
import 'package:core_module/src/services/auth/firebase_auth_service_impl.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FirebaseAuthMock extends Mock implements FirebaseAuth {}

class UserCredentialMock extends Mock implements UserCredential {}

void main() {
  late final FirebaseAuth firebaseAuthMock;
  late final UserCredential userCredential;
  late final IAuthService sut;

  const kRegisterWithEmailParams = RegisterWithEmailParams(email: 'email', password: 'password');

  const kLoginWithEmailParams = LoginWithEmailParams(email: 'email', password: 'password');

  setUpAll(() {
    firebaseAuthMock = FirebaseAuthMock();
    userCredential = UserCredentialMock();
    sut = FirebaseAuthServiceImpl(firebaseAuthMock);
  });

  group('Firebase Auth Service | ', () {
    test('should be able to register an user with email successfully', () async {
      when(() => firebaseAuthMock.createUserWithEmailAndPassword(
          email: any(named: 'email'), password: any(named: 'password'))).thenAnswer((_) async => userCredential);

      await sut.registerWithEmail(kRegisterWithEmailParams);

      verify(() => firebaseAuthMock.createUserWithEmailAndPassword(email: 'email', password: 'password')).called(1);
    });

    test('should throw an AuthError when FirebaseAuth fails trying to register with email', () async {
      when(() => firebaseAuthMock.createUserWithEmailAndPassword(
          email: any(named: 'email'), password: any(named: 'password'))).thenThrow(
        FirebaseAuthException(code: 'default_code'),
      );

      expect(() => sut.registerWithEmail(kRegisterWithEmailParams), throwsA(isA<AuthError>()));
    });

    test('shoudl be able to login with email successfully', () async {
      when(() =>
              firebaseAuthMock.signInWithEmailAndPassword(email: any(named: 'email'), password: any(named: 'password')))
          .thenAnswer((_) async => userCredential);

      await sut.loginWithEmail(kLoginWithEmailParams);

      verify(() => firebaseAuthMock.signInWithEmailAndPassword(email: 'email', password: 'password')).called(1);
    });

    test('should throw an AuthError when FirebaseAuth fails trying to login with email', () async {
      when(() =>
              firebaseAuthMock.signInWithEmailAndPassword(email: any(named: 'email'), password: any(named: 'password')))
          .thenThrow(FirebaseAuthException(code: 'default_code'));

      expect(() => sut.loginWithEmail(kLoginWithEmailParams), throwsA(isA<AuthError>()));
    });
  });
}

import "dart:async";
import "../Mixins/validators.dart";
import "package:rxdart/rxdart.dart";
class Bloc extends Object with Validators{
  final _emailController =  BehaviorSubject<String>();
  final _passwordController =  BehaviorSubject<String>();


  Function(String) get changeEmail => _emailController.sink.add;
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<bool> get submitButton => Observable.combineLatest2(email, password, (e,p)=>true);
  Function(String) get changePassword => _passwordController.sink.add;
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  dispose(){
    _emailController.close();
    _passwordController.close();

  }
}


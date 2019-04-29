import "package:flutter/material.dart";
import "../blocs/bloc.dart";
import "../blocs/provider.dart";

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return (Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(bloc),
          passwordField(bloc),
          submitButton(bloc)
        ],
      ),
    ));
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: bloc.changeEmail,
          decoration: InputDecoration(
            hintText: "myname@example.com",
            labelText: "Email Address",
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            obscureText: true,
            onChanged: bloc.changePassword,
            decoration: InputDecoration(
              hintText: "Password",
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitButton,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text("login"),
          onPressed: snapshot.hasData
            ? (){ print("Submitted");}:null,
          color: Colors.blue,
        );
      },
    );
  }
}

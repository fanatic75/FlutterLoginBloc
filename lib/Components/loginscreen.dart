import "package:flutter/material.dart";
import "../blocs/bloc.dart";

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[emailField(), passwordField(), submitButton()],
      ),
    ));
  }

  Widget emailField() {
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

  Widget passwordField() {
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

  Widget submitButton() {
    return RaisedButton(
      child: Text("login"),
      onPressed: () {},
      color: Colors.blue,
    );
  }
}

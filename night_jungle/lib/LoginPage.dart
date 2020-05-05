import 'package:flutter/material.dart';
import 'HomePage.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}


enum FormType {
  login,
  register,
  user123, pass123,

}

class _LoginPageState extends State<LoginPage>{
  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";
  FormType _form = FormType.login;

  _LoginPageState(){
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  void _emailListen(){
    if (_emailFilter.text.isEmpty){
      _email = ""; 
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen(){
    if (_passwordFilter.text.isEmpty){
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  void _formChange () async{
    setState(() {
      if (_form == FormType.register) {
        _form = FormType.register;
      } else {
        _form = FormType.login;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: _buildBar(context),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            _buildTextFields(),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildBar(BuildContext context){
    return new AppBar(
      title: new Text("WELCOME TO NIGHT JUNGLE"),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,

    );
  }

  Widget _buildTextFields(){
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new TextField(
              controller: _emailFilter,
              decoration: new InputDecoration(
                labelText: 'Email'
              ),
            ),
          ),
          new Container(
            child: new TextField(
              controller: _passwordFilter,
              decoration: new InputDecoration(
                labelText: 'Password'
              ),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButtons(){
    if (_form == FormType.login){
      return new Container(
        child:
          Center(
            child: new Column(
              children: <Widget>[
                new RaisedButton(
                  color: Colors.deepPurple[300],
                  child: new Text('Login'),
                    onPressed: (){ _loginPressed();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage(),)
                        );
                      },
                  ),
                new FlatButton(
                  child: new Text('Register'),
                  onPressed: (){
    
                  },
                ),
              ],
            ),
      )
    );
    } else {
      return new Container(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: new Text('Sign In'),
              onPressed: _formChange,
            ),
            new FlatButton(
              child: new Text('Sign Up'),
              onPressed: _createAccountPressed,
            )
          ],
        ),
      );
    }
  }

  void _loginPressed(){
    print('email: $_email and password: $_password');

  }

  void _createAccountPressed() {
    print('email: $_email and password: $_password');
  }

}






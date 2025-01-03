import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'package:wori_app/core/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with UiLoggy {
  final _showClearEmail = false;
  final _showClearPassword = false;

  void _showInputValues() {
    String email = _emailController.text;
    String password = _passwordController.text;
    loggy.debug("Email: $email - Password: $password");
  }

  @override
  void initState() {
    _emailController.addListener(
      () => textFiledListener(_emailController, _showClearEmail),
    );
    _passwordController.addListener(
      () => textFiledListener(_passwordController, _showClearPassword),
    );
    super.initState();
  }

  void textFiledListener(TextEditingController controller, bool showProperty) {
    setState(() {
      showProperty = controller.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTextInput(
                  'Email', Icons.email, _emailController, _showClearEmail),
              SizedBox(
                height: 20,
              ),
              _buildTextInput('Password', Icons.key, _passwordController,
                  _showClearPassword,
                  isPassword: true),
              SizedBox(
                height: 20,
              ),
              _buildLoginButton(),
              SizedBox(
                height: 30,
              ),
              _buildRegisterPrompt(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextInput(String hint, IconData icon,
      TextEditingController controller, bool showClear,
      {bool isPassword = false}) {
    return Container(
      decoration: BoxDecoration(
        color: DefaultColors.sentMessageInput,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: controller.text.isEmpty
                    ? null
                    : IconButton(
                        onPressed: controller.clear,
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey,
                        ),
                      ),
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterPrompt() {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: RichText(
            text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(color: Colors.grey),
                children: [
              TextSpan(
                  text: "Click here to register.",
                  style: TextStyle(color: Colors.white))
            ])),
      ),
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        _showInputValues();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: DefaultColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.symmetric(vertical: 15),
      ),
      child: Text(
        "Login",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

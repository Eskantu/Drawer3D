import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF5967ff),
              Color(0xFF5347ff),
              Color(0xFF5180ff),
              Color(0xFF538bff),
              Color(0xFF5995ff),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
          child: ListView(
            children: [
              const Text(
                'Sign in',
                style: TextStyle(
                    fontFamily: 'PTSans',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Email',
                  style: TextStyle(
                      fontFamily: 'PTSans',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildTextField(
                hintText: 'Enter your e mail',
                obscureText: false,
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Password',
                  style: TextStyle(
                      fontFamily: 'PTSans',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _buildTextField(
                hintText: 'Enter your password',
                obscureText: true,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              _buildFogotPasswordButton(),
              _buildRememberMeCheck(),
              const SizedBox(
                height: 20,
              ),
              _buildLoginButton(),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  '- OR -',
                  style: TextStyle(
                      fontFamily: 'PTSans',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Sign in with',
                style: TextStyle(
                  fontFamily: 'PT-Sans',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _buildSocialButtons(),
              const SizedBox(
                height: 30,
              ),
              _buildSignUpQuestion()
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildLogoButton({
    required String image,
    required VoidCallback onPressed,
  }) {
    return FloatingActionButton(
      heroTag: image,
      backgroundColor: Colors.white,
      onPressed: onPressed,
      child: SizedBox(
        height: 30,
        child: Image.asset(image),
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLogoButton(
          image: 'assets/images/google_logo.png',
          onPressed: () {},
        ),
        _buildLogoButton(
          image: 'assets/images/apple_logo.png',
          onPressed: () {},
        ),
        _buildLogoButton(
          image: 'assets/images/facebook_logo.png',
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildSignUpQuestion() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\t have an Account? ',
          style: TextStyle(
            fontFamily: 'PT-Sans',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        InkWell(
          child: const Text(
            'Sing Up',
            style: TextStyle(
              fontFamily: 'PT-Sans',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
         Navigator.pushReplacementNamed(context, 'home');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(6),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
        ),
        child: const Text(
          'Login',
          style: TextStyle(
              fontFamily: 'PTSans',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheck() {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
          checkColor: Colors.blue,
          fillColor: MaterialStateProperty.all(Colors.white),
        ),
        const Text(
          'Remember me',
          style: TextStyle(
              fontFamily: 'PTSans', fontSize: 14, color: Colors.white),
        )
      ],
    );
  }

  Widget _buildFogotPasswordButton() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
                fontFamily: 'PTSans', fontSize: 14, color: Colors.white),
          ),
          onPressed: () {}),
    );
  }

  Widget _buildTextField({
    required bool obscureText,
    Widget? prefixIcon,
    String? hintText,
  }) {
    return Material(
      color: Colors.transparent,
      elevation: 2,
      child: TextField(
        keyboardType: obscureText?TextInputType.text:TextInputType.emailAddress,
        cursorColor: Colors.white,
        cursorWidth: 2,
        obscureText: obscureText,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          
          filled: true,
          fillColor: Color(0xFF5180ff),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white54,
            fontWeight: FontWeight.bold,
            fontFamily: 'PTSans',
          ),
        ),
      ),
    );
  }
}

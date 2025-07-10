import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medora/Pages/home.dart';
import 'package:medora/Pages/login.dart';
import 'dart:io';
import 'package:http/io_client.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  bool _obscurePassword = true;

  String? _emailError;
  String? _passwordError;
  String? _nameError;
  String? _phoneError;

  Future<void> _registerUser() async {
    final url =
        Uri.parse('https://care-plus-back.vercel.app/api/v1/users/register');

    final ioc = HttpClient()
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
    final client = IOClient(ioc);

    try {
      print("📡 Sending request to: $url");
      final response = await client.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "name": _nameController.text.trim(),
          "email": _emailController.text.trim(),
          "password": _passwordController.text,
          "role": "customer",
          "phone": _phoneController.text.trim(),
        }),
      );

      print("✅ Server responded: ${response.statusCode} - ${response.body}");

      if (response.statusCode == 201 || response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Registration successful")),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed: ${response.body}")),
        );
      }
    } catch (e) {
      print("❌ Network error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Network error. Please try again.")),
      );
    } finally {
      client.close();
    }
  }

  void _validateForm() {
    setState(() {
      _emailError = _validateEmail(_emailController.text);
      _passwordError = _validatePassword(_passwordController.text);
      _nameError = _validateName(_nameController.text);
      _phoneError = _validatePhone(_phoneController.text);
    });

    if (_formKey.currentState!.validate() &&
        _emailError == null &&
        _passwordError == null &&
        _nameError == null &&
        _phoneError == null) {
      _registerUser();
    }
  }

  String? _validateEmail(String value) {
    if (value.isEmpty) {
      return "Please enter your email address";
    } else if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) {
      return "Enter a valid email (e.g. joe@mail.com)";
    }
    return null;
  }

  String? _validatePassword(String value) {
    if (value.length < 8) {
      return "Must be at least 8 characters long";
    }
    return null;
  }

  String? _validateName(String value) {
    if (value.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  String? _validatePhone(String value) {
    if (value.isEmpty) {
      return "Please enter your phone number";
    } else if (!RegExp(r"^[0-9]{10,15}$").hasMatch(value)) {
      return "Enter a valid phone number";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3F3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
          child: ListView(
            children: [
              const SizedBox(height: 24),
              const Text(
                "Create your account to save time \n & care more for your health",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    _buildTextField("Name", _nameController, false, _nameError),
                    const SizedBox(height: 16),
                    _buildTextField(
                        "Email", _emailController, false, _emailError),
                    const SizedBox(height: 16),
                    _buildTextField(
                        "Password", _passwordController, true, _passwordError),
                    const SizedBox(height: 16),
                    _buildTextField(
                        "Phone", _phoneController, false, _phoneError),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _validateForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6FC0D3),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "or continue with",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton('assets/images/download.jfif'),
                  const SizedBox(width: 20),
                  _buildSocialButton('assets/images/Facebook_Logo_(2019).png'),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already a Medora member? ",
                      style: TextStyle(fontSize: 14)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6FC0D3),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "By clicking Sign up or Log in, I agree to ",
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                  children: [
                    TextSpan(
                      text: "Medora’s\n Terms of Service",
                      style: TextStyle(color: Color(0xFF6FC0D3)),
                    ),
                    TextSpan(
                      text: " and ",
                      style: TextStyle(color: Colors.black45),
                    ),
                    TextSpan(
                      text: "Privacy Policy.",
                      style: TextStyle(color: Color(0xFF6FC0D3)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      bool isPassword, String? errorText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          obscureText: isPassword ? _obscurePassword : false,
          keyboardType:
              label == "Phone" ? TextInputType.phone : TextInputType.text,
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  )
                : null,
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.error, color: Colors.red, size: 18),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  errorText,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildSocialButton(String assetPath) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image.asset(assetPath, height: 30),
      ),
    );
  }
}

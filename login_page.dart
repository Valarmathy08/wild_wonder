import 'package:flutter/material.dart';
import 'animal_details_screen.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitLogin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String password = _passwordController.text;

      // Perform login authentication here
      // You can validate the username and password, make API calls, or perform any other necessary actions

      // Navigate to the animal details page
      Navigator.pushNamed(context, '/animal_details');
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/leaf.png'), // Replace 'assets/background.png' with the actual path to your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white, // Set the background color of the container
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  color: Colors.white, // Set the background color of the container
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () => _submitLogin(context), // Pass the context to the _submitLogin method
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54,
                    fixedSize: Size(200, 50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimalDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Add your implementation for the animal detail page here
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal Details'),
      ),
      body: Center(
        child: Text('Animal Detail Page'),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/animal_details': (context) => AnimalDetailPage(),
        '/species_selection': (context) => AnimalSpeciesSelection(),
      },
    );
  }
}

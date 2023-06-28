import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _adultController = TextEditingController();
  final TextEditingController _childrenController = TextEditingController();
  DateTime? _selectedDate;

  void _submitBooking() {
    if (_formKey.currentState!.validate()) {
      String name = _nameController.text;
      String email = _emailController.text;
      String username = _usernameController.text;
      String adult = _adultController.text;
      String children = _childrenController.text;
      String date = _selectedDate.toString();

      // Perform booking submission logic here
      // You can validate the input, send the booking information to a server, or perform any other necessary actions
      Navigator.pushNamed(context, '/login');
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2023, 12, 31),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _adultController.dispose();
    _childrenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/leaf.png'), // Replace 'assets/background.png' with the actual path to your background image
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: null, // Set the app bar to null
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white, // Set the background color for the container
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      filled: true, // Add solid background
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  color: Colors.white, // Set the background color for the container
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true, // Add solid background
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  color: Colors.white, // Set the background color for the container
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      filled: true, // Add solid background
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
                  color: Colors.white, // Set the background color for the container
                  child: TextFormField(
                    controller: _adultController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Adult',
                      filled: true, // Add solid background
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the number of adults';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  color: Colors.white, // Set the background color for the container
                  child: TextFormField(
                    controller: _childrenController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Children',
                      filled: true, // Add solid background
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the number of children';
                      }
                      return null;
                    },
                  ),
                ),

                SizedBox(height: 16.0),
                Container(
                  color: Colors.white, // Set the background color for the container
                  child: ListTile(
                    title: Text('Date'),
                    subtitle: _selectedDate == null
                        ? Text('Select a date')
                        : Text(_selectedDate.toString()),
                    trailing: Icon(Icons.calendar_today),
                    onTap: () => _selectDate(context),
                  ),
                ),
                SizedBox(height: 32.0),
                Container(
                  width: double.infinity, // Set the button width to match the parent container
                  child: ElevatedButton(
                    onPressed: _submitBooking,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50), // Adjust the minimum height of the button
                      primary: Colors.black54, // Set the background color of the button
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 18.0, // Adjust the font size of the button text
                      ),
                    ),
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

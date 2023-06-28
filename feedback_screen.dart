import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'home_page.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController _feedbackController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Map<String, dynamic>> _feedbackList = [];

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _fetchFeedbackData();
  }

  void _fetchFeedbackData() async {
    List<Map<String, dynamic>> feedbackList = await DatabaseHelper.getAllFeedback();
    setState(() {
      _feedbackList = feedbackList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade700,
        title: Text(
          'Provide Your Feedback',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.0),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: _feedbackController,
                          maxLines: 4,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter your feedback here',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your feedback';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () => _handleFeedbackSubmission(context),
                          child: Text('Submit Feedback'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Feedbacks',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _feedbackList.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> feedbackData = _feedbackList[index];
                    String feedback = feedbackData['message'];
                    return ListTile(
                      title: Text('$feedback'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleFeedbackSubmission(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      String feedbackMessage = _feedbackController.text.trim();

      await DatabaseHelper.insertFeedback(feedbackMessage);
      _fetchFeedbackData(); // Fetch updated feedback data
      _showConfirmationDialog(context);
      _feedbackController.clear(); // Clear the feedback input field
    }
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Feedback Submitted'),
          content: Text('Thank you for your feedback!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context); // Navigate back to the previous screen
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

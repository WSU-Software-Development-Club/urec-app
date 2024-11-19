import 'package:flutter/material.dart';


// this was inspired by the WSU login page.

class LoginPage extends StatefulWidget
{
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>
{
  // controllers for property changes
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // value for check box
  bool rememberLogIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Title of login page
        title: Text("UREC Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // Username
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16),

            // Password
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 16),

            // Remember Log-in check box
            Row(
              children: [
                Checkbox(
                  value: rememberLogIn,
                  onChanged: (bool? value) {
                    setState(() {
                     rememberLogIn = value ?? false;
                    });
                  },
                ),
                Text(
                  "Keep me signed in",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Login Button functionality
            ElevatedButton(
              onPressed: () 
              { // testing 
                print("Login pressed"); // nice, button press is read
                print("Username: ${usernameController.text}"); // gets username
                print("Password: ${passwordController.text}"); // gets password
                print("Keep me signed in: $rememberLogIn"); // gets bool value  

                if (usernameController.text.isEmpty || passwordController.text.isEmpty) // invalid inputs
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Missing fields."))); // displays warning
                }
                else
                {
                  print("Login successful"); // need have a validation feature in the future, but for now this is only for UI-testing purposes.
                }
              },

              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

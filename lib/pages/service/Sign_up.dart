import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:thefixed/pages/home.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top header image container
            Column(
              children: [
                Container(
                  height: screenHeight / 2,
                  color: const Color.fromARGB(255, 128, 97, 6),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 65,
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/pizza2.png",
                          height: 220,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Well Come!",
                        style: TextStyle(
                            fontSize: 30,
                            color: const Color.fromARGB(255, 230, 8, 200)),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Overlapping card-style form container
            Transform.translate(
              offset: Offset(0, -90),
              child: Container(
                height: screenHeight / 1.75,
                // FIXED: width = screenWidth
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 30),

                    Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),

                    // Use TextField directly with decoration
                    TextField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        prefixIcon: Icon(Icons.person),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 175, 174, 172)
                            .withOpacity(0.3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 18),

                    Text("Email",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),

                    // Use TextField directly with decoration
                    TextField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        hintText: "Enter email",
                        prefixIcon: Icon(Icons.email),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 175, 174, 172)
                            .withOpacity(0.3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 18),

                    Text("Password",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),

                    // Use TextField directly with decoration
                    TextField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        prefixIcon: Icon(
                          Icons.password,
                          size: 30,
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 175, 174, 172)
                            .withOpacity(0.3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 33),

                    Center(
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: TextButton(
                                onPressed: () async {
                                  final name = namecontroller.text.trim();
                                  final email = emailcontroller.text.trim();
                                  final password =
                                      passwordcontroller.text.trim();
                                  if (name.isEmpty ||
                                      email.isEmpty ||
                                      password.isEmpty) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("Please fill all fields"),
                                      backgroundColor: Colors.red,
                                    ));
                                    return;
                                  }

                                  try {
                                    UserCredential userCredential =
                                        await FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                                email: email,
                                                password: password);

                                    // Optionally update display name
                                    await userCredential.user!
                                        .updateDisplayName(name);

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("Sign Up Successful!"),
                                      backgroundColor: Colors.green,
                                    ));
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                    // Navigate to next screen if needed
                                  } on FirebaseAuthException catch (e) {
                                    String error = "An error occurred";
                                    if (e.code == 'email-already-in-use') {
                                      error = "Email already in use";
                                    } else if (e.code == 'invalid-email') {
                                      error = "Invalid email";
                                    } else if (e.code == 'weak-password') {
                                      error = "Weak password";
                                    }

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text(error),
                                      backgroundColor: Colors.red,
                                    ));
                                  }
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

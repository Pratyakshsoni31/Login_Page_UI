import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Loginpage());
}
bool securetext=true;
class Loginpage extends StatelessWidget {
  const Loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}
 class Home extends StatelessWidget {
   const Home({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
        children: [
          Image.asset("assets/login.png"),
          SizedBox(        
            height: 10,
            width: 10,
            child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(27.5),
              ),
              hintText: "Enter your Name",
              labelText: "Username",
             labelStyle: const TextStyle(
               fontSize: 30 
              ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
           ),
          ),),

          const SizedBox(
                height: 10.0,
          ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27.5),
              ),
              suffixIcon: IconButton(
                icon: securetext
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
                onPressed: (){
                  setState(() {
                   securetext = !securetext;
                  });
                },
                ), 
              filled: true,
              hintText: "Enter your password",
              labelText: "Password",
             labelStyle: const TextStyle(
               fontSize: 30 
              ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
           ),
           obscureText: securetext,
          ),
          TextButton(
            child: const Text("Forgot Password",style: TextStyle(color: Colors.blue)),
            style: TextButton.styleFrom(fixedSize: const Size.fromHeight(5)),
            onPressed: () {},
            ),
          ElevatedButton(
                child: const Text(
                "Log In",
                style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                ),
              ),
                style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.5),
                ),  
                fixedSize: const Size(140, 55), primary: Colors.blue[800]),
                onPressed: () {},
              ),
              const SizedBox(
                height: 15.0,
              ),
                    ElevatedButton(
                child: const Text(
                "Exit",
                style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                ),
              ),
                style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.5),
                ),  
                fixedSize: const Size(140, 55), primary: Colors.blue[800]),
                onPressed: () {
                SystemNavigator.pop();
                },
              ),
            TextButton(
            child: const Text("Register",style: TextStyle(color: Colors.blue)),
            style: TextButton.styleFrom(fixedSize: const Size.fromHeight(5)),
            onPressed: () {},
            ),
          ],
        ),
        ),
      ),
    );
   }

  void setState(Null Function() param0) {}
 }
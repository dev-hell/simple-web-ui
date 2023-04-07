import 'package:flutter/material.dart';

void main (){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mynew(),
      theme: ThemeData(primarySwatch:Colors.grey),

    );
  }
}
class mynew extends StatefulWidget {
  const mynew({Key? key}) : super(key: key);

  @override
  State<mynew> createState() => _mynewState();
}
class _mynewState extends State<mynew> {
  final FirstTextfield = TextEditingController();
  final secondTextField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Icon(Icons.lock ,size: 100,),
            SizedBox(height: 50,),
            Text('Welcome Back To Apple ID',style: TextStyle(color: Colors.grey[700],fontSize: 16),),
            SizedBox(height: 40,),
            SizedBox(
              width: 300,
              child: TextFormField(
                controller:FirstTextfield ,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder()
                ),
              ),
            ) ,
            SizedBox(height: 30,),
            SizedBox(
              width: 300,
              child: TextFormField(
                controller:secondTextField ,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width:200 ,),
                TextButton(onPressed: (){}, child:Text("Forget Password?",style: TextStyle(fontSize: 13,color: Colors.grey[700]),),),
              ]
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                style:ElevatedButton.styleFrom(
                    primary: Colors.black,
                  fixedSize: const Size(300, 50)
                ) ,
                onPressed: (){
                  print(FirstTextfield.text);
                  print(secondTextField.text);
                }, child: Text("LOGIN",style: TextStyle(color: Colors.white),)),
            SizedBox(height: 20,),
            Text("Or Continue with",style: TextStyle(color: Colors.grey[700]),),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Image.asset("images/icons8-google-48.png"),splashRadius: 22,),

                SizedBox(width: 10,),
                IconButton(onPressed: (){}, icon: Image.asset("images/icons8-apple-logo-50.png"),splashRadius: 22,),
              ],
            ),
           SizedBox(height: 25,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Not a Member?",style: TextStyle(color: Colors.grey[700]),),
               SizedBox(width: 4,),
               Text("Register Now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
             ],
           ),
          ],
        ),
      ),
      ),
    );
  }
}

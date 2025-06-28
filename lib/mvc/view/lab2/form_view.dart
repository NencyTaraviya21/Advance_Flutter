import 'package:adv_flutter/import_export/import_export.dart';


class SignUpFormView extends StatefulWidget {
  const SignUpFormView({super.key});

  @override
  State<SignUpFormView> createState() => _SignUpFormViewState();
}

class _SignUpFormViewState extends State<SignUpFormView> {
  StudentSignUpController _controller = StudentSignUpController();
  GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _cpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(APPBAR_SIGNUP_FORM) ,),
      body: Form(
        key: _formkey ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _nameController,
                validator: (value) => _controller.validName(_nameController.text),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _emailController,
              validator: (value) => _controller.validaEmail(_emailController.text),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _passController,
              validator: (value){
                if(value!.isEmpty){
                  return 'Please Enter Something!!';
                }
                if(!RegExp(r'^[0-9]$').hasMatch(value)){
                  return 'Enter Valid Password!!';
                }
                return null;
              },

            ),
            TextFormField(
              controller: _cpassController,
              validator: (value){
                if(value!.isEmpty){
                  return 'Please Enter Something!!';
                }
                if(!RegExp(r'^[0-9]$').hasMatch(value)){
                  return 'Enter Valid Password!!';
                }
                // else if(_passController.text==_cpassController.text){
                //   return 'valid';
                // }
                return null;
              },
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if(_formkey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Image.network("https://www.shutterstock.com/image-illustration/success-sign-registration-screen-smartphone-260nw-1934325170.jpg")));
                }
              });
            }, child: Text("Signup")),
          ],
        )
      ),
      );
  }
  bool cpass(){
    if(_cpassController.text == _passController.text){
      return true;
    }
    else{
      return false;
    }
}
}

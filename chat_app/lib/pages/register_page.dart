import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/cubits/auth_cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../constants.dart';
import '../helper/show_snack_bar.dart';
import '../widegts/custom_button.dart';
import '../widegts/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  String? email, password;
  static String id = 'RegisterPage';
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          isLoading = true;
        } else if (state is RegisterSuccess) {
          Navigator.pushNamed(context, ChatPage.id);
          isLoading = false;
        } else if (state is RegisterFailure) {
          showSnackBar(context, state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
            backgroundColor: kPrimaryColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    // Spacer(flex: 2,),
                    const SizedBox(
                      height: 75,
                    ),
                    Image.asset(
                      'assets/images/scholar.png',
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Scholar Chat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                      ],
                    ),
                    // Spacer(flex: 2,),
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: const [
                        Text(
                          'REGISTER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    CustomFormTextField(
                      onChanged: (data) {
                        email = data;
                      },
                      hintText: "Email",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomFormTextField(
                      onChanged: (data) {
                        password = data;
                      },
                      hintText: "Password",
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    CustomButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<AuthCubit>(context)
                              .registerUser(email: email!, password: password!);
                          // isLoading = true;
                          // setState(() {});
                          // try {
                          //   await registerUser();
                          //   Navigator.pushNamed(context, ChatPage.id);
                          //   // showSnackBar(context, 'Success');
                          //   // Navigator.push(context, MaterialPageRoute(builder: (context){
                          //   //   return ChatPage();
                          //   // },),);
                          // } on FirebaseAuthException catch (e) {
                          //   if (e.code == 'weak-password') {
                          //     showSnackBar(context, 'weak password');
                          //   } else if (e.code == 'email-already-in-use') {
                          //     showSnackBar(context, 'email already exist');
                          //   }
                          // } catch(e){
                          //   showSnackBar(context, 'There was an error');
                          // }
                          // isLoading = false;
                          // setState(() {});
                        } else {}
                      },
                      txtButton: 'REGISTER',
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Alreagy have an account ?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            // Navigator.pushNamed(context, 'LoginPage');
                          },
                          child: const Text(
                            ' Login',
                            style: TextStyle(
                              color: Color(0xffC7EDE6),
                            ),
                          ),
                        ),

                        // Spacer(flex: 3,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> registerUser() async {
    var auth = FirebaseAuth.instance;
    UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email!, password: password!);
  }
}

import 'package:chat_app/pages/blocs/auth_bloc/auth_bloc.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/cubits/chat_cubit/chat_cubit.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widegts/custom_button.dart';
import 'package:chat_app/widegts/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constants.dart';
import '../helper/show_snack_bar.dart';

class LoginPage extends StatelessWidget {
  bool isLoading = false;
  static String id = 'login page';
  GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          BlocProvider.of<ChatCubit>(context).getMessages();
          Navigator.pushNamed(context, ChatPage.id, arguments: email);
          isLoading = false;
        } else if (state is LoginFailure) {
          showSnackBar(context, state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) => ModalProgressHUD(
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
                        'LOGIN',
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
                    obscureText: true,
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
                        BlocProvider.of<AuthBloc>(context).add(
                            LoginEvent(email: email!, password: password!));

                        // isLoading = true;
                        // try {
                        //   await loginUser();
                        //   Navigator.pushNamed(context, ChatPage.id,
                        //       arguments: email);
                        //   // showSnackBar(context, 'Success');
                        // } on FirebaseAuthException catch (e) {
                        //   if (e.code == 'user-not-found') {
                        //     showSnackBar(context, 'user not found');
                        //   } else if (e.code == 'wrong-password') {
                        //     showSnackBar(context, 'wrong password');
                        //   }
                        // } catch (e) {
                        //   showSnackBar(context, 'There was an error');
                        // }
                        // isLoading = false;
                      } else {}
                    },
                    txtButton: 'LOGIN',
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'don\'t have an account ?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RegisterPage.id);
                          // or:
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return RegisterPage();
                          //     },
                          //   ),
                          // );
                        },
                        child: const Text(
                          ' Register',
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
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}

import 'package:flutter/material.dart';
import 'package:gaming_app_ui/components/buttons.dart';
import 'package:gaming_app_ui/components/circular_button.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../constents/constents.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 21, horizontal: 27),
                    child: Image(
                      image: AssetImage('images/boy4.png'),
                      width: 321,
                      height: 247,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Poppins Bold',
                      color: themeColor,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52, vertical: 12),
                  child: Text(
                    'Hi, kindly fill in the form to proceed\n combat',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins Regular',
                      color: blackColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 52, right: 52, top: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins Regular',
                        color: blackColor,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 52, right: 52, top: 24),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'User Name',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins Regular',
                        color: blackColor,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 52),
                        child: IntlPhoneField(
                          pickerDialogStyle: PickerDialogStyle(
                            countryCodeStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins Medium',
                              color: blackColor,
                            ),
                            countryNameStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins Medium',
                              color: blackColor,
                            ),
                            searchFieldCursorColor: themeColor,
                            searchFieldInputDecoration: InputDecoration(
                              hintText: 'Search country',
                              hintStyle: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins Regular',
                                color: blackColor,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: themeColor, width: 1.5),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: themeColor, width: 1.5),
                              ),
                            ),
                            searchFieldPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                          ),
                          textAlign: TextAlign.start,
                          disableLengthCheck: true,
                          showDropdownIcon: false,
                          showCountryFlag: false,
                          languageCode: 'en',
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: themeColor, width: 1.5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: themeColor, width: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 52),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Your Number',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins Regular',
                              color: blackColor,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: themeColor, width: 1.5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: themeColor, width: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 52, right: 52, top: 24),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins Regular',
                        color: blackColor,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 52, right: 52, top: 24),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Image.asset(
                        'images/passicon.png',
                        height: 12,
                        width: 12,
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins Regular',
                        color: blackColor,
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 52, right: 52, top: 24),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Image.asset(
                        'images/passicon.png',
                        height: 12,
                        width: 12,
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins Regular',
                        color: blackColor,
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                const Center(
                  child: MyButton(title: 'Create Account'),
                ),
                const SizedBox(
                  height: 23,
                ),
                const Center(
                  child: Text(
                    'Connect With:',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins Bold',
                      color: themeColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularButton(
                        buttonText: 'G+',
                        buttonColor: Color(0xffF34A38),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircularButton(
                        buttonText: 'f',
                        buttonColor: Color(0xff2672CB),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Center(
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins Regular',
                      color: blackColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins Bold',
                      color: themeColor,
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

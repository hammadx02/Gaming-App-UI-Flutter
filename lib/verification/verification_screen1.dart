
import 'package:flutter/material.dart';
import 'package:gaming_app_ui/components/buttons.dart';
import 'package:gaming_app_ui/constents/constents.dart';

import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class VerficationScreen1 extends StatefulWidget {
  const VerficationScreen1({super.key});

  @override
  State<VerficationScreen1> createState() => _VerficationScreen1State();
}

class _VerficationScreen1State extends State<VerficationScreen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 133,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 76),
              child: Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins Bold',
                  color: themeColor,
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 76),
              child: Text(
                'Confirm the country code and\n enter your mobile number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins Regular',
                  color: blackColor,
                ),
              ),
            ),
            const SizedBox(
              height: 49,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 66),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'YOUR NUMBER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 8,
                      fontFamily: 'Poppins Bold',
                      color: blackColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 66),
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
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      dropdownTextStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins Bold',
                        color: blackColor,
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins Regular',
                        color: blackColor,
                      ),
                      initialValue: '+234',
                      textAlign: TextAlign.start,
                      disableLengthCheck: true,
                      showDropdownIcon: false,
                      showCountryFlag: false,
                      languageCode: 'en',
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: themeColor, width: 1.5),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: themeColor, width: 1.5),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 65),
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins Bold',
                        color: blackColor,
                      ),
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: 'Your Number',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins Regular',
                          color: blackColor,
                        ),
                        suffixIcon: Icon(
                          Icons.cancel_rounded,
                          color: themeColor,
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
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: MyButton(title: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}

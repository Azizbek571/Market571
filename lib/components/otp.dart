import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
        
        title: Text("OTP verification"),),
      body:  Form(
          child: Column(
            children:[ 
                 Text("We've sent a verification code to"),
                     Text("+998 91 966 99 66", style: TextStyle(fontWeight: FontWeight.bold),),
                     SizedBox(height: 30,),

              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            Container(
              decoration: BoxDecoration( 
                border: Border()
              ),
              height: 68,
              width: 55,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: 
                  OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
                  
                  
                  
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(width: 7,),
            Container(
              decoration: BoxDecoration( 
                
              ),
              height: 68,
              width: 55,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: 
                  OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
                  
                  
                  
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(width: 7,),

            Container(
              decoration: BoxDecoration( 
                
              ),
              height: 68,
              width: 55,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: 
                  OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
                  
                  
                  
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(width: 7,),

            Container(
              decoration: BoxDecoration( 
                
              ),
              height: 68,
              width: 55,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: 
                  OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
                  
                  
                  
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
                    ],
                  ),
                  Text("Resend OTP in 30 seconds", style: TextStyle(color: Colors.grey.shade400),)
                  ]
          )),
    );
  }
}
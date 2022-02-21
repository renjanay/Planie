import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planie_application/ui/awal.dart';
import 'package:planie_application/ui/login.dart';
import 'package:planie_application/ui/login.dart';



class Ubah_password  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  // Figma Flutter Generator LogoWidget - FRAME
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 181, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
                SizedBox(height: 25.h,),             
                Container(
                  child: Material(
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Awal()));
                      },
                      child: Ink.image(
                        image: AssetImage('assets/images/Mayabaruicononly1.png'),
                        height: 144.h,
                        width: 136.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 43.h,),
                // Textfield E-mail verification lupa password
                Container(
                  height: 44.h,
                  width: 258.w,
                  child:
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color : Color.fromRGBO(244, 243, 181, 1))
                        ),
                        hintText: "Masukkan Password",
                        labelText: "Password Baru",
                        labelStyle: TextStyle(color: Colors.black) 
                      ),
                    ),
                ),
                SizedBox(height: 18.h,),
                // Textfield kode verification lupa password
                Container(
                  height: 44.h,
                  width: 258.w,
                  child:
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color : Color.fromRGBO(244, 243, 181, 1))
                        ),
                        hintText: "Masukkan Password",
                        labelText: "Ketik Ulang Password Baru",
                        labelStyle: TextStyle(color: Colors.black) 
                      ),
                    ),
                ),
                SizedBox(height: 18.h,),

                // Tombol masuk
                Card(
                  color: Color.fromRGBO(91, 118, 78, 1),
                  elevation: 5,
                  child: SizedBox(
                    height: 32.h,
                    width: 257.w,
                    child: Container(
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Center(
                          child: Text("Masuk", style: TextStyle(fontSize: 16.sp, color: Colors.white),),
                        ),
                      ),
                    ),
                  ),
                ),

              // Tombol Lupa Akun

                SizedBox(height: 190.h,),
                
            Container(
              height: 38.h,
              width: 71.w,
              child: Text('Planie', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(39, 78, 19, 1),
                  fontFamily: 'Chewy',
                  fontSize: 30.sp,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w400,
                  height: 1
              ),),
            ),

              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}




        
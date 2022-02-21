import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:planie_application/ui/awal.dart';
import 'package:planie_application/ui/login.dart';
import 'package:planie_application/ui/tour.dart';


class Registrasi extends StatelessWidget {
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
                SizedBox(height: 48.h,),
                // Textfield Username
                Container(
                  height: 44.h,
                  width: 258.w,
                  child:
                  TextFormField(
                    decoration: InputDecoration(

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color : Color.fromRGBO(244, 243, 181, 1))
                      ),
                      hintText: "Masukkan Nama Lengkap",
                      labelText: "Nama",
                      labelStyle: TextStyle(color: Colors.black) 
                    ),
                  ),
                ),
                SizedBox(height: 17.h,),

                Container(
                  height: 44.h,
                  width: 258.w,
                  child:
                  TextFormField(
                    decoration: InputDecoration(

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color : Color.fromRGBO(244, 243, 181, 1))
                      ),
                      hintText: "Masukkan User Name",
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.black) 
                    ),
                  ),
                ),
                SizedBox(height: 17.h,),
          // Textfield Masukkan E-mail
                Container(
                  height: 44.h,
                  width: 258.w,
                  child:
                  TextFormField(
                    decoration: InputDecoration(

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color : Color.fromRGBO(244, 243, 181, 1))
                      ),
                      hintText: "Masukkan E-mail",
                      labelText: "E-mail",
                      labelStyle: TextStyle(color: Colors.black) 
                    ),
                  ),
                ),
                SizedBox(height: 17.h,),
          // Textfield Masukkan kode Verifikasi
                Container(
                  height: 44.h,
                  width: 258.w,
                  child:
                  TextFormField(
                    decoration: InputDecoration(

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color : Color.fromRGBO(244, 243, 181, 1))
                      ),
                      hintText: "Masukkan Kode Verifikasi",
                      labelText: "Kode Verifikasi",
                      labelStyle: TextStyle(color: Colors.black) 
                    ),
                  ),
                ),
                SizedBox(height: 17.h,),
                // Textfield Password
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
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black) 
                    ),
                  ),
                ),
                SizedBox(height: 17.h,),
                // Textfield Password
                Container(
                  height: 32.h,
                  width: 257.w,
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                    
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color : Color.fromRGBO(244, 243, 181, 1))
                      ),
                      hintText: "Masukkan Ulang Password",
                      labelText: "Ketik Ulang Password",
                      labelStyle: TextStyle(color: Colors.black) 
                    ),
                  ),
                ),
                SizedBox(height: 17.h,),
                // Jenis User
                Container(
                  height: 32.h,
                  width: 350,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 44.w),
                    child: DropdownSearch<String>(
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        items: ["Petani Lokal", "Pengguna Reguler"],
                        hint: "country in menu mode",
                        popupItemDisabled: (String s) => s.startsWith('I'),
                        onChanged: print,
                        selectedItem: "Pilih Jenis Pengguna"),
                  ),
                ),                
                SizedBox(height: 17.h,),
                // Tombol masuk
                Card(
                  color: Color.fromRGBO(91, 118, 78, 1),
                    child: Container(
                    height: 32.h,
                    width: 257.w,  
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Tour()));},
                        child: Center(
                          child: Text("Masuk", style: TextStyle(fontSize: 16.sp, color: Colors.white),),
                        ),
                      ),
                    ),
                ),
                // Tombol Belum Punya Akun
                Container( 
                  height: 35.h,
                  width: 180.w,         
                  color: Color.fromRGBO(244, 243, 181, 1),           
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Text('Sudah Punya Akun',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));},
                  
                  ),
                ),
                SizedBox(height: 46.h,),
                
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







        
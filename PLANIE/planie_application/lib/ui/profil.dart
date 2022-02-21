import 'package:flutter/material.dart';
import 'package:planie_application/model/user.dart';
import 'package:planie_application/servis/authservis.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planie_application/ui/bio.dart';

String nama = '';

class Profil extends StatelessWidget {
  String? namauser = null;
  AuthService user = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(137, 179, 117, 1),
          automaticallyImplyLeading: false,
          title: Text(nama),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: FutureBuilder(
              builder: (context, projectSnap) {
                if (projectSnap.connectionState == ConnectionState.none &&
                    projectSnap.hasData == null) {
                  //print('project snapshot data is: ${projectSnap.data}');
                  return Container();
                }
                if (projectSnap.hasData) {
                  User user = projectSnap.data as User;
                  nama = user.nama_lengkap_user;
                  return Container(
                      child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        height: 84.h,
                        width: 84.w,
                        child: Material(
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bio()));
                            },
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/provil.jpg'),
                              minRadius: 12,
                              maxRadius: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        color: Color.fromRGBO(239, 150, 111, 1),
                        height: 15.h,
                        width: 114.w,
                        child: Center(
                          child: Text(
                            user.jenis_user,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontSize: 12.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w400,
                                height: 1),
                          ),
                        ),
                      ),
                      Container(
                        height: 35.h,
                        width: MediaQuery.of(context).size.width / 1,
                        child: Center(
                          child: Text(
                            user.bio_user,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontSize: 12.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w400,
                                height: 1),
                          ),
                        ),
                      ),
                    ],
                  ));
                }
                return Container(
                    child: Column(
                  children: [Text("user")],
                ));
              },
              future: user.loadUser(),
            ),
          ),
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

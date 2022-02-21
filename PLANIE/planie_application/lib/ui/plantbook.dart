import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planie_application/model/tanaman.dart';
import 'package:planie_application/servis/tanaman.dart';
import 'package:planie_application/ui/loading_seard.dart';
import 'package:planie_application/ui/profil.dart';
import 'package:planie_application/ui/search.dart';

class Plant_Book extends StatefulWidget {
  @override
  plant_book createState() => new plant_book();
}

class plant_book extends State<Plant_Book> {
  List<Tanaman> _users = <Tanaman>[];
  List<Tanaman> _usersDisplay = <Tanaman>[];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUsers().then((value) {
      setState(() {
        _isLoading = false;
        _users.addAll(value);
        _usersDisplay = _users;
        print(_usersDisplay.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(137, 179, 117, 1),
        automaticallyImplyLeading: false,
        title: Text("PLANTBOOK"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profil()));
            },
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (!_isLoading) {
                return index == 0
                    ? _searchBar()
                    : DetailTanaman(tanaman: this._usersDisplay[index - 1]);
              } else {
                return LoadingView();
              }
            },
            itemCount: _usersDisplay.length + 1,
          ),
        ),
      ),
    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          searchText = searchText.toLowerCase();
          setState(() {
            _usersDisplay = _users.where((u) {
              var fName = u.nama_tanaman.toLowerCase();
              return fName.contains(searchText);
            }).toList();
          });
        },
        // controller: _textController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Users',
        ),
      ),
    );
  }
}

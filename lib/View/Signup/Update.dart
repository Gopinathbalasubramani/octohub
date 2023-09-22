import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskoctohub/Models/UserList/userList.dart';
import 'package:http/http.dart' as http;
import '../../Data/network/ApiEndPoints.dart';
import '../../Data/network/BaseApiService.dart';

class UpdateData extends StatefulWidget {
 final String? token;
  const UpdateData({super.key,this.token});

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  @override

  Widget build(BuildContext context) {


    return  Scaffold(
body: Center(
  child: Text('Login Success'),
),
    );
  }
}

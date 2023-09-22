import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:taskoctohub/View/Dashboard/taskDetailsPage.dart';


import '../../Res/Utils/color.dart';
import 'CalenderListView.dart';

class CompletedPage extends StatefulWidget {
  final bool? complete;
  const CompletedPage({super.key,this.complete});

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  DateTime _selectedValue = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      backgroundColor: primary,
      leading: Icon(Icons.event_note),
      title: Text('Completed task'),
    ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                DatePickerTimeline(
                  _selectedValue,
                  onDateChange: (date) {
                    setState(() {
                      _selectedValue = date;
                    });
                  }, width: double.infinity,
                ),
                Divider(),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0.0),
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(),
                    leading:  Container(
                      decoration: BoxDecoration(
                        color: primarySoft,
                        shape: BoxShape.circle
                      ),
height: 60,width: 60,

                      padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                      child: SvgPicture.asset('assets/images/to-do-list.svg',height: 20,width: 20,fit: BoxFit.contain,),
                    ),

                    // userData['avatar'] != null
                    //     ? Image.network(
                    //   userData['avatar'],
                    //   width: 120,
                    //   height: 80,
                    //   fit: BoxFit.values.last,
                    // )
                    //     : Container(
                    //   width: 80,
                    //   height: 80,
                    //   color: Colors.grey,
                    // ),
                    title: Row(

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "1",
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize:35,
                              fontFamily: 'Open Sans'
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "active task",
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:12,
                                color: Color(0xffe0e0e0),
                                fontFamily: 'Open Sans'
                            ),
                          ),
                        ),
                      ],
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Today 2020 May 20',
                        maxLines: 2,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'Open Sans'
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    trailing: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primary
                      ),
                      child: Text(
                        '+',
                        maxLines: 2,
                        style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 35,
                            fontFamily: 'Open Sans',
                          color: Colors.white
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Visibility(
                  visible: widget.complete ?? false,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TaskDetailsPage(

                            )),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color:disabled
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                margin: EdgeInsets.only(left: 16,top: 16,bottom: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        '02',
                                        maxLines: 2,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 30,
                                            fontFamily: 'Open Sans',
                                            color: Colors.grey
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        '25 PM',
                                        maxLines: 2,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            fontFamily: 'Open Sans',
                                            color: Colors.grey
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 16,left: 8),
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Attend the flutter meet',
                                      maxLines: 2,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          fontFamily: 'Open Sans',
                                          color: Colors.white
                                      ),
                                      // overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      'I have attend the meeting where we should showcase some quick app to build with build ',
                                      maxLines: 2,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          fontFamily: 'Open Sans',
                                          color: Colors.white
                                      ),
                                      //  overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      '2023 may 20',
                                      maxLines: 2,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          fontFamily: 'Open Sans',
                                          color: Colors.white
                                      ),
                                      // overflow: TextOverflow.ellipsis,
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16, top: 16,bottom: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
Container(
  height: 20,
    width: 20,
    decoration: BoxDecoration(shape: BoxShape.circle,
color: greenAccent),child: Icon(Icons.check,color: Colors.white,size: 15,),),
                                Icon(Icons.delete,color: Colors.grey,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   height: MediaQuery.of(context).size.height -
                //       (7 * kBottomNavigationBarHeight),
                //   child: TaskList(
                //     taskStream: taskStream,
                //     pageStatus: pageStatus,
                //   ),
                // )
              ],
            ),
            Visibility(
              visible: widget.complete != true ,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
                    SvgPicture.asset('assets/images/undraw_no_data.svg',height: 150,width: 200,),
                  SizedBox(height: 10,),
                    Text(
                      'No task found',
                      maxLines: 2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Open Sans'
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

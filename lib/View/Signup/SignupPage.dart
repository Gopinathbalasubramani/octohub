import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:taskoctohub/Models/Login/ResgisterResponse.dart';
import 'package:taskoctohub/View/LoginPage.dart';

import '../../Data/response/Status.dart';
import '../../Res/Utils/color.dart';
import '../../ViewModel/Login/LoginVM.dart';
import '../entryPage/bottomsheet.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  LoginVM loginModel = LoginVM();
  RegisterResponse registerResponse = RegisterResponse();
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController stores = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<Stores>  storeDate = [];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                /*Align(
                  alignment: Alignment.center,
                    child: SvgPicture.asset('assets/images/undraw_ideas.svg',height:100 ,width: screenWidth -40,)),
                SizedBox(height: 20,),*/
                Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                    controller:userName ,

                     validator: (value) {

                      if(value!.isNotEmpty){
                        return '';
                      }
                      else{
                        return 'enter your username';
                      }
                     },
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'enter username',
                      fillColor: Colors.grey[100],


                      contentPadding:  EdgeInsets.only(left: 16) ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                      controller:email ,
                      validator: (value) {

                        if(value!.isNotEmpty){
                          return '';
                        }
                        else{
                          return 'enter your Email';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'enter email',
                        fillColor: Colors.grey[100],


                        contentPadding:  EdgeInsets.only(left: 16) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                      controller:mobile ,
                      validator: (value) {

                        if(value!.isNotEmpty){
                          return '';
                        }
                        else{
                          return 'enter your Mobile';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'enter mobile',
                        fillColor: Colors.grey[100],


                        contentPadding:  EdgeInsets.only(left: 16) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                      controller:stores ,
                      validator: (value) {

                        if(value!.isNotEmpty){
                          return '';
                        }
                        else{
                          return 'enter your stores';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'enter Stores',
                        fillColor: Colors.grey[100],


                        contentPadding:  EdgeInsets.only(left: 16) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                      controller:companyName ,
                      validator: (value) {

                        if(value!.isNotEmpty){
                          return '';
                        }
                        else{
                          return 'enter  company name';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'enter company name',
                        fillColor: Colors.grey[100],


                        contentPadding:  EdgeInsets.only(left: 16) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                      controller:address ,
                      validator: (value) {

                        if(value!.isNotEmpty){
                          return '';
                        }
                        else{
                          return 'enter  address';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'enter address',
                        fillColor: Colors.grey[100],


                        contentPadding:  EdgeInsets.only(left: 16) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                      controller:city ,
                      validator: (value) {

                        if(value!.isNotEmpty){
                          return '';
                        }
                        else{
                          return 'enter city';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'enter city',
                        fillColor: Colors.grey[100],


                        contentPadding:  EdgeInsets.only(left: 16) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                      controller:state ,
                      validator: (value) {

                        if(value!.isNotEmpty){
                          return '';
                        }
                        else{
                          return 'enter state';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'enter state',
                        fillColor: Colors.grey[100],


                        contentPadding:  EdgeInsets.only(left: 16) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
                  child: TextFormField(
                      controller:country ,
                      validator: (value) {

                        if(value!.isNotEmpty){
                          return '';
                        }
                        else{
                          return 'enter country';
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'enter country',
                        fillColor: Colors.grey[100],


                        contentPadding:  EdgeInsets.only(left: 16) ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16,top: 26,bottom: 16),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: primary,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
                        textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    //           TextEditingController _titleCtrl = TextEditingController();
                    //         TextEditingController _noteCtrl= TextEditingController();
                    //   TextEditingController _dateCtrl= TextEditingController();
                    // TextEditingController _timeCtrl= TextEditingController();
                    onPressed:  () {
                      /*if (_formKey.currentState!.validate()) {*/
                        // var data = Stores(text: stores.text);
                        // storeDate.add(data);
                        var body = RegisterRequest(
                            isDefaultBranchLocation:true,
                            companyId: "DEF56C4F-808D-4F81-993C-EF67C77A5F91",
                            accountTypeId: 2,
                            isEnableProductUpload: false,
                            contactType: "Customer",
                            company: companyName.text,
                            loginName: userName.text,
                            name: "User972",
                            password: "12345678",
                            emailId: email.text,
                            mobile: mobile.text,
                            identityType: "Pancard",
                            identityNumber: "99KSHSK0991",
                            uploadIdentity: "Pan//Image path991",
                            professionalSkills: "tech991",
                            subscriptionId: 1,
                            stores: storeDate,
                            isPrimaryAddress: false,
                            address: address.text,
                            city: city.text,
                            state: state.text,
                            zipCode: "50003",
                            country: country.text,
                            contactCompany: "JBS991",
                            mid:"MIN#00"
                        );
                        userName.clear();
                        email.clear();
                        mobile.clear();
                        stores.clear();
                        companyName.clear();
                        address.clear();
                        city.clear();
                        state.clear();
                        country.clear();
                        loginModel.validateLogin(body);

                    /*  }*/


                      /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomTabsCustomWidget(
                              menuScreenContext: context,
                              selectedIndex: 0,
                            )),
                      );*/

                    }, child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  ),
                ),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                  return Card();
                },),
                ChangeNotifierProvider<LoginVM>(
                  create: (BuildContext context) => loginModel,
                  child: Consumer<LoginVM>(builder: (context, viewModel, _) {
                    if (loginModel.registerResonse.data?.apiname ==
                        LoginEnum.REGISTER) {
                      handleLoginApiResponse(
                          loginModel.registerResonse.status);
                    }
                    return Container();
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  handleLoginApiResponse(var status) {
    print("REGISTER info status  $status");
    switch (status) {
      case Status.LOADING:
        print("REGISTER Info :: LOADING ");
        break;
      case Status.ERROR:
        print("REGISTER Info :: ERROR ");
        break;
      case Status.COMPLETED:
        loginModel.registerResonse.data?.apiname = LoginEnum.NONE;
        print("REGISTER Info :: COMPLETED ");
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>LoginPage(


              )),
        );

        

        break;
      default:
    }
    return Container();
  }
}

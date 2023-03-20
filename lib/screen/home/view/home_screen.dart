import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper01_provider/screen/home/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: false,
          title: Text(
            "Stepper App",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
        body: Theme(
          data: ThemeData(
            primarySwatch: Colors.red,
            colorScheme: ColorScheme.light(
              primary: Colors.red,
            ),
          ),
          child: Stepper(
            type: StepperType.vertical,
            currentStep: homeProvidertrue!.i,
            onStepTapped: (value) {
              return homeProvidertrue!.jumpstep(value);
            },
            onStepContinue: () {
              homeProvidertrue!.nextstep();
            },
            onStepCancel: () {
              homeProvidertrue!.backstep();
            },
            steps: [
              Step(
                title: Text(
                  "Sing Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                content: Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Colors.black38,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Full Name*",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.black38,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Email-Id",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Colors.black38,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Password*",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Colors.black38,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Confirm Password*",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: Text(
                  "Log In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                content: Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Colors.black38,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Full Name*",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Colors.black38,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Password*",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: Text(
                  "Confirm",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                content: Text(
                  "You successfully logged in !",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                isActive: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
